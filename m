Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 809CB4CA4A2
	for <lists+devicetree@lfdr.de>; Wed,  2 Mar 2022 13:17:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238941AbiCBMSG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Mar 2022 07:18:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234344AbiCBMSF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Mar 2022 07:18:05 -0500
Received: from mail-oo1-xc32.google.com (mail-oo1-xc32.google.com [IPv6:2607:f8b0:4864:20::c32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13D7233E86
        for <devicetree@vger.kernel.org>; Wed,  2 Mar 2022 04:17:21 -0800 (PST)
Received: by mail-oo1-xc32.google.com with SMTP id 6-20020a4a0906000000b0031d7eb98d31so1640084ooa.10
        for <devicetree@vger.kernel.org>; Wed, 02 Mar 2022 04:17:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Yp9yCzmbZQ001Z5slUUJI+2pkFZXbIsPEspBp/H/XTE=;
        b=bHw54Eajeml+XK3atjqpzYD6DUplWxnM/nBvXNkwYojQk2l/LNOVbthO8D0zQ+P3kg
         MoQV/7Thmv/EC9ibRvxtHvweoq04ekpNuL3++goDbZ8A8ABA91M+Sas1aBLN1LPrxjjV
         1eCIfB2d9VfVxqJpNPQIKaz8ZqVo7bq3FAO9IoOGwir4qH1IeJyxFVesd6zWb3TSorSt
         sZvz9WnD4pu3rQWUp3iWDT3tD7x11k92yAWwFvacNw9wRDOQc1IBcj6P4EaUHTPdKati
         J5p+Mdl6QFhKR4N1Tq5Bjyv7BuPYT4ohXAp87ABYquCOkVhEc9R1OdQibrFdGPfWKowx
         K/Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Yp9yCzmbZQ001Z5slUUJI+2pkFZXbIsPEspBp/H/XTE=;
        b=ciYEdf9NMeRfwRwQ8K1wTaajVlgcziP3e3R5XIKnpRZnwnZhioUQV/Q6NN1sSb1Ttq
         96v9Fc4o8WlxuH9o/AKknap5duhN1YN/bgExrONU4w3nozseeR7QH45vS6pvB9nhedaJ
         k4Q/UMVNQqP/4kDMmcVPfF95xDODYu08ibMfHHJb0rDb5m4xtJOcpU+4wp26uQzdP984
         TXsMn/c0BVYCCVrdjWAva6OsB1PmbnOqD5/KqyxCKoRKGk294Pd39Wv7BJsskw8kfsd0
         Tp7A/j5/i5odzDdu25bmakuEdEm8NOtKui46ZjjT4yJTIcdS42EWJhKLKXqb760LopzI
         nliQ==
X-Gm-Message-State: AOAM531caBn7zCIQASFGqT1QI9tgscE9GVYD+55WsPY7ehHbw5C7Y+gl
        1YBghnW8bVbBAK4q/C/y9l/AhnYWKGISAHZomlUxqA==
X-Google-Smtp-Source: ABdhPJwjUD1s+Bkkx1ug739gRgv+fN6MVqgiCXuHQsLxV4y2DEPsh9HDQi63/Vp4pPbHWmJDw8O2yX+qV31FHEXblsA=
X-Received: by 2002:a4a:301c:0:b0:2dc:dcf1:8a62 with SMTP id
 q28-20020a4a301c000000b002dcdcf18a62mr15006245oof.7.1646223440380; Wed, 02
 Mar 2022 04:17:20 -0800 (PST)
MIME-Version: 1.0
References: <20220301072511.117818-7-bhupesh.sharma@linaro.org> <20220302000734.GA676465@bhelgaas>
In-Reply-To: <20220302000734.GA676465@bhelgaas>
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date:   Wed, 2 Mar 2022 17:47:09 +0530
Message-ID: <CAH=2NtwOT9K9ONZLG0G9LUvYi4h-0feJk5HuLNE0DWVg06ovCg@mail.gmail.com>
Subject: Re: [PATCH v2 6/7] arm64: dts: qcom: sm8150: Add pcie nodes for SM8150
To:     Bjorn Helgaas <helgaas@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, bhupesh.linux@gmail.com,
        lorenzo.pieralisi@arm.com, agross@kernel.org,
        bjorn.andersson@linaro.org, svarbanov@mm-sol.com,
        bhelgaas@google.com, linux-kernel@vger.kernel.org,
        robh+dt@kernel.org, sboyd@kernel.org, mturquette@baylibre.com,
        linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Bjorn,

On Wed, 2 Mar 2022 at 05:37, Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> In subject, s/pcie/PCIe/
>
> Since the subject already mentions "sm8150:", maybe the "for SM8150"
> is superfluous?
>
> On Tue, Mar 01, 2022 at 12:55:10PM +0530, Bhupesh Sharma wrote:
> > Add nodes for the two PCIe controllers founds on the
> > SM8150 SoC.
>
> s/founds/found/
>
> Rewrap to fill 75 columns.

Sure, I will fix these in v3.

> > +                     interrupt-map = <0 0 0 1 &intc 0 149 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
> > +                                     <0 0 0 2 &intc 0 150 IRQ_TYPE_LEVEL_HIGH>, /* int_b */
> > +                                     <0 0 0 3 &intc 0 151 IRQ_TYPE_LEVEL_HIGH>, /* int_c */
> > +                                     <0 0 0 4 &intc 0 152 IRQ_TYPE_LEVEL_HIGH>; /* int_d */
>
> Personally I would use INTA, INTB, etc in the comments to match the
> PCI spec usage, but grep says that's a minority view.

Right, I see that most dts (especially the qcom ones) use this
nomenclature (although I have no strong personal opinion about this).

Regards,
Bhupesh
