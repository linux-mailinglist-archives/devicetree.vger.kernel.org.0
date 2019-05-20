Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id ED9C824175
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2019 21:47:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725776AbfETTqZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 May 2019 15:46:25 -0400
Received: from mail.kernel.org ([198.145.29.99]:33840 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725554AbfETTqZ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 20 May 2019 15:46:25 -0400
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 4283D21019
        for <devicetree@vger.kernel.org>; Mon, 20 May 2019 19:46:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1558381584;
        bh=uu3wErwhcw0wslwLMybmkGYaO/ZJDf6TXCa+47Zue50=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=wi7kzTzgPolu43HW9ABtZZW2M/bhvdKnC6UOvqPtFu3ad7XUz9FrzPnFmmcUlr7rz
         qbC4TH27x1u9HxECMR2y0bc/v65GWfkejPNu7Uq/Ues98aLyHP9spbbIgZRm363jet
         Dt+vE9sJBjBmaKp6wipD/xewYVr66yvWxefMmu8Y=
Received: by mail-qk1-f178.google.com with SMTP id g190so9572465qkf.8
        for <devicetree@vger.kernel.org>; Mon, 20 May 2019 12:46:24 -0700 (PDT)
X-Gm-Message-State: APjAAAWY5Ig1ZUMt+YWq8T3E9/0VZHnrxcY3I9EBg7BkYWLmz4noo8xZ
        2uAJjbAvGGh4icuKWWIVEZ0t/XdJs33dCjVYPQ==
X-Google-Smtp-Source: APXvYqx5lF7MuceHa4XKg31nYlIkX1RB9DChxiqcJBiwxFPamVEefS4AQVC24ekASzW97hb76X00JsLaUGGwtBeAvVw=
X-Received: by 2002:a05:620a:1107:: with SMTP id o7mr52311850qkk.184.1558381583482;
 Mon, 20 May 2019 12:46:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190520155127.cdc6dofoqckwsrrb@flea>
In-Reply-To: <20190520155127.cdc6dofoqckwsrrb@flea>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Mon, 20 May 2019 14:46:11 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJhBji40AnA=ND116N0+DkvzhX=Rt-wa=DX3Fd3uQRdAw@mail.gmail.com>
Message-ID: <CAL_JsqJhBji40AnA=ND116N0+DkvzhX=Rt-wa=DX3Fd3uQRdAw@mail.gmail.com>
Subject: Re: Device Tree nodes ending with -supply
To:     Maxime Ripard <maxime.ripard@bootlin.com>
Cc:     devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 20, 2019 at 10:51 AM Maxime Ripard
<maxime.ripard@bootlin.com> wrote:
>
> Hi Rob,
>
> I've noticed that you recently added support to validate the *-supply
> properties in the dt-schema tools.
>
> However, we have a family of PMIC that are exposing a bunch of power
> supplies (battery, AC, USB, etc) to know what is currently powering
> the board.
>
> All these various supplies are exposed as children nodes of the PMIC
> itself, and they are named *-power-supply. For an example, you can
> look at:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm/boot/dts/axp209.dtsi#n56
>
> Now, those are obviously not properties, and yet the current dt-schema
> schemas are trying to validate them.
>
> I'm not really sure how to fix that. Changing the node names seems
> like an obvious solution, but they seem to be what they should be. Can
> we reduce the scope of the validation to only match properties (ie
> arrays?) and not the nodes (objects?)

While I'd prefer to avoid that node name, I fixed it with the fancy
new if/then schema:

  ".*-supply$":
    if:
      not: { type: object }
    then:
      $ref: "types.yaml#/definitions/phandle"

I'll push it out shortly.

Rob
