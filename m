Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E11A72FC9F
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2019 15:48:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726574AbfE3NsV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 May 2019 09:48:21 -0400
Received: from mail-io1-f68.google.com ([209.85.166.68]:43187 "EHLO
        mail-io1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725870AbfE3NsU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 May 2019 09:48:20 -0400
Received: by mail-io1-f68.google.com with SMTP id k20so5065931ios.10
        for <devicetree@vger.kernel.org>; Thu, 30 May 2019 06:48:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=f4rkyvetspz0f+UlMWFdOOo6R1mEg57wlesDPAijXPo=;
        b=LghQzQZ9TMVx2ERKO1WFjeaFPIeD7V+5u8AB5/zL6N/QlqYm/iTesG/vH69+3b8D9Q
         sFLM7rtXTU7hRsspi3B2JY4QcYiy4aAMRiP7hsNSYNsAxYvbT2QDrX0+lyah7fWBVuT2
         cVgspZKfT2NDAYxupzM7PFum8Hu2mrGrE3UuMrq1XrcDJBROa7FPZslZPQcy1GCeKstT
         EadHmetpYM92XcslRxmF3ZL2S+RdPlAKtKY1/ByCrPAgtNyLatN1YczwfHfK9m99uxww
         8vPu40BBznlAKXIMeqHVGZUbHkGuCkJI92Mnvg+iVmHheOcM8s1s0q3tbhSiwHu1enA9
         zg7A==
X-Gm-Message-State: APjAAAUR/2Zq5kwGKK4e/u11R5kmkoH647qSqDCP5GBuiW6JMa9hdOYE
        dRwOFv/221y0V8RB8i/wO0Ni2uilgT4=
X-Google-Smtp-Source: APXvYqzbadKGFVMYMqrqq/eTAXxqionGQwYxNpCXnZH9q4mdH+lgT2nut1kc3zAF95+fkwRmbX2b6Q==
X-Received: by 2002:a5d:851a:: with SMTP id q26mr2525814ion.246.1559224099312;
        Thu, 30 May 2019 06:48:19 -0700 (PDT)
Received: from mail-it1-f170.google.com (mail-it1-f170.google.com. [209.85.166.170])
        by smtp.gmail.com with ESMTPSA id 4sm1122188ity.9.2019.05.30.06.48.17
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 May 2019 06:48:17 -0700 (PDT)
Received: by mail-it1-f170.google.com with SMTP id g24so9927381iti.5
        for <devicetree@vger.kernel.org>; Thu, 30 May 2019 06:48:17 -0700 (PDT)
X-Received: by 2002:a24:91d2:: with SMTP id i201mr3054942ite.88.1559224097044;
 Thu, 30 May 2019 06:48:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190527120910.18964-1-maxime.ripard@bootlin.com>
In-Reply-To: <20190527120910.18964-1-maxime.ripard@bootlin.com>
From:   Chen-Yu Tsai <wens@csie.org>
Date:   Thu, 30 May 2019 21:48:02 +0800
X-Gmail-Original-Message-ID: <CAGb2v66uhrm20BwmODkPZjSM6Ek+xEg23w2Cs49ikW3WcU1Lqg@mail.gmail.com>
Message-ID: <CAGb2v66uhrm20BwmODkPZjSM6Ek+xEg23w2Cs49ikW3WcU1Lqg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: display: Convert Allwinner DSI to a schema
To:     Maxime Ripard <maxime.ripard@bootlin.com>
Cc:     Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Sean Paul <seanpaul@chromium.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 27, 2019 at 8:09 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The Allwinner SoCs have a MIPI-DSI and MIPI-D-PHY controllers supported in
> Linux, with a matching Device Tree binding.
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

Looks good to me. However not sure why you replaced the clock index macros
with raw numbers.

Reviewed-by: Chen-Yu Tsai <wens@csie.org>
