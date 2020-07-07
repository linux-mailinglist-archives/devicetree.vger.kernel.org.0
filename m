Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2B49B216C8C
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2020 14:12:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726900AbgGGMMF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jul 2020 08:12:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726805AbgGGMMF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jul 2020 08:12:05 -0400
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com [IPv6:2a00:1450:4864:20::244])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD34BC08C5E0
        for <devicetree@vger.kernel.org>; Tue,  7 Jul 2020 05:12:04 -0700 (PDT)
Received: by mail-lj1-x244.google.com with SMTP id h22so42441681lji.9
        for <devicetree@vger.kernel.org>; Tue, 07 Jul 2020 05:12:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IlSwOCm4Yp4QhEp+fKcUAnUUasXB3VYf9UjEjYZIcf8=;
        b=eT+JTyiBhq+2XdI8p40JGaSsQrdp5ZNpLgc0mhjRML5RRc/IKoAEKbkF2CEpMua7Bc
         lMnnmBCmD190tIdUlRwSQxS/OwFF2PpjTgUAovzzEgQ4mrKhHXVDRLerJgPsWNBLz05w
         q73+4+hrdLYAFuWGvxPr6Ugijz7JL+m3VgD6vPHoMBXpdkV/7STnczv5kMTMYnoegwl/
         eQ9PVHiWJbdMx10G4oU1CZEhU4c5LENDqllqKHdqTruHI32ZTwKomUssWXARt5k/6eq6
         Y5vItHM1TQnZZ/kXBbzXmBkEBXfWRri+/TToF8OzdjNUjf/7zdnPYJUpf8pvWyqmKxjh
         rjFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IlSwOCm4Yp4QhEp+fKcUAnUUasXB3VYf9UjEjYZIcf8=;
        b=okscQshB+rCQWNY0ybUPhvyptRYTdkxngOQVB+RJJMS1zF2w0DNdwPFPsjuLcnImje
         0z7oFkzXDz3UXWRttbv7PsoTpiE81n4RSFaXI/cud45QyhuZBLu+oF/F3ETXMJwk7/j1
         2YnEOc8gGmKMEuqyI2re9CfKYHepnjVAPM+oUeS0bENYffLLMykYp1NL0Q16bedTTXpn
         CCUKshCba475J3l4Iup6Jb+07BL7znSU6EIQTCYQ4Tyd94v313i5Eq+QFnD6yW9O3Xed
         6xvab0QJo6h9VxGx3v9ZmcfzBQwPtqUEc+MhROjaGXybS/j1T4nJvNJGHPCv9iw87plB
         IOaA==
X-Gm-Message-State: AOAM532dQ5DqxojgrA/b2q83Y6uwpjILKiYg5/Iesb4APxZBBVAExCBN
        +bUeHLDKz7qveTNSsQQ/nJ6Qrd0ZO3CW3AT75nvRYg==
X-Google-Smtp-Source: ABdhPJz7SCvAFX6JRt8uMLfBbogC74fZ5d+SCUDXGDmAGrc551BoRJMrunZrfurzNe3Vtggyg7VkXsU/c8EBx5QNxOk=
X-Received: by 2002:a05:651c:1291:: with SMTP id 17mr28926806ljc.286.1594123923145;
 Tue, 07 Jul 2020 05:12:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200622083432.1491715-1-lee.jones@linaro.org>
In-Reply-To: <20200622083432.1491715-1-lee.jones@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 7 Jul 2020 14:11:52 +0200
Message-ID: <CACRpkdbco3Us2aFS7bXj=W2dPK3-KRonix1dPcGariLptUsLJA@mail.gmail.com>
Subject: Re: [PATCH 1/1] ARM: dts: ux500: Supply nodes for the other 2 AB8500
 PWM devices
To:     Lee Jones <lee.jones@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 22, 2020 at 10:34 AM Lee Jones <lee.jones@linaro.org> wrote:

> As per 'struct mfd_cell ab8500_devs[]' there are not 1, but 3 PWM
> devices on the AB8500.  Until now, each of them have referenced
> the same Device Tree node.  This change ensures each device has
> their own.
>
> Due to recent `dtc` checks [0], nodes cannot share the same node
> name, so we are forced to rename the affected nodes by appending
> their associated numeric 'bank ID'.
>
> [0] ste-ab8500.dtsi:210.16-214.7: ERROR (duplicate_node_names):
>       /soc/prcmu@80157000/ab8500/ab8500-pwm: Duplicate node name
>
> Signed-off-by: Lee Jones <lee.jones@linaro.org>

Patch applied!

Yours,
Linus Walleij
