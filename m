Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A90FF6B5F45
	for <lists+devicetree@lfdr.de>; Sat, 11 Mar 2023 18:41:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229965AbjCKRlv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 11 Mar 2023 12:41:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229642AbjCKRlv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 11 Mar 2023 12:41:51 -0500
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2105A38668
        for <devicetree@vger.kernel.org>; Sat, 11 Mar 2023 09:41:27 -0800 (PST)
Received: by mail-lj1-x22a.google.com with SMTP id by8so8575919ljb.7
        for <devicetree@vger.kernel.org>; Sat, 11 Mar 2023 09:41:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678556437;
        h=from:cc:to:in-reply-to:message-id:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gucexyEn/MXQiixU059a1/bhO0FmHxte+9JfrT4eP5U=;
        b=G2a/LBEhROuK31RwWtLoTNnZJubfhKAq7vIcoZCEaG5ll/8RmG6+Z5ebrqoQOlXZxW
         SpVuEP0mM19Cs/4m9I9FAyyb9R/SHj+QfHLgtTkTwN8uKEIkJUcDP+ltJ1eI4Vmo5McQ
         FwM5CrjT2LmWLDGk08+WSl2pA4D9O4g3/yOLMSzqXL/KTl2NWoZrOGbYafc6kEu8G/Tw
         aEw6NOS3ay0o71cklSAntmRtPtcbDn2OM64NdMqCjtxX+FjKvwRdZ9NMvckPzRn+vTfV
         cI6czaMMZpDrsH+sE+uVGzybwjqOWisM4pT/aA5r/U04nBBKf7ejpwWiFZW/+TP7lvcO
         K1VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678556437;
        h=from:cc:to:in-reply-to:message-id:date:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gucexyEn/MXQiixU059a1/bhO0FmHxte+9JfrT4eP5U=;
        b=xLVmzx+WTyczpNXaII/ZLtppzw5HdoSaPehxEubON1Vrde6/KmD8NW/tBLWkLO3tf4
         H6tVFThCdGjHev8j/lLFdEVXSUbnfxQbeMpwNuPr3+8Ah1olK4g+1jX9CpeNmyHZbYg0
         jI5v7aKYHuNMLP41ycImHjuzcV09SjUmm6VNr21kT4ksWKjl0lC4q276qBXbNf5GuN0q
         wq0CCYLldM8C8HihQ76vLXIOAU6KZkSF+kpvn2J2ObkwK7pnnzaeD1i7FJtSVkrM3XqZ
         B9PPBOyMTyjjHredmEnqGhcQFfL9ia61xbxI0vOnRS/nGw900Bj0j70To4hHK1wWW/yr
         NejQ==
X-Gm-Message-State: AO0yUKWClo4lmNZFoE3H8Ttjrh7MtcKV6m8nL83h+KY5K0Q9dngPQCv2
        dmsO5T0k4CRPCeRt93aaD7LE9VFQvjZh0/0cE64=
X-Google-Smtp-Source: AK7set9pd9oFM9im2I3WSoe1jS0f4hjJo3MePBEfg2FD2WaG4QlSPxuVgN1VnkCQQ6BlI9naWq9EZw==
X-Received: by 2002:a05:651c:88:b0:293:3dd6:89a4 with SMTP id 8-20020a05651c008800b002933dd689a4mr9010457ljq.34.1678556436909;
        Sat, 11 Mar 2023 09:40:36 -0800 (PST)
Received: from letter.txt (46-138-144-249.dynamic.spd-mgts.ru. [46.138.144.249])
        by smtp.gmail.com with ESMTPSA id y14-20020a2e9d4e000000b00295a32db4e1sm397806ljj.91.2023.03.11.09.40.36
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Mar 2023 09:40:36 -0800 (PST)
Date:   Sat, 11 Mar 2023 09:40:36 -0800 (PST)
Message-ID: <c13993bc-9d12-f20e-de27-fa0b8a58ed33-1-sleirsgoevy@gmail.com>
In-Reply-To: <c13993bc-9d12-f20e-de27-fa0b8a58ed33@linaro.org>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jaehoon Chung <jh80.chung@samsung.com>
Cc:     linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
From:   Sergey Lisov <sleirsgoevy@gmail.com>
Content-Type: text/plain; charset=UTF-8
X-Spam-Status: No, score=-0.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,MISSING_SUBJECT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> > ---
> >  .../devicetree/bindings/mmc/synopsys-dw-mshc-common.yaml    | 6 ++++++
> >  1 file changed, 6 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc-common.yaml b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc-common.yaml
> > index 8dfad89c7..2bc5ac528 100644
> > --- a/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc-common.yaml
> > +++ b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc-common.yaml
> > @@ -57,6 +57,12 @@ properties:
> >        force fifo watermark setting accordingly.
> >      $ref: /schemas/types.yaml#/definitions/flag
> >  
> > +  fifo-access-32bit:
> 
> Missing type boolean.

Thanks, will add the same $ref as for the entry above.

> > +    description:
> > +      Specifies that this device requires accesses to its 64-bit registers
> > +      to be done as pairs of 32-bit accesses, even on architectures where
> > +      readq is available.
> 
> And why the device would require this? If it has 64-bit registers in the
> first place, they can be accessed in 64-bit. Otherwise these are not
> 64-bit registers, but just lower/upper 32-bit, right?
> 
> Also, why this cannot be implied from compatible? Why different boards
> with same SoC should have different FIFO access?

It probably can be implied, but I am not exactly sure on which boards it
affects, so I decided to go for a new devicetree option. Anyway, the same
argument applies to the "data-addr" property, which is already in the
spec, so I supposed that adding such knobs is fine.
