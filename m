Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6AF94562127
	for <lists+devicetree@lfdr.de>; Thu, 30 Jun 2022 19:21:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235860AbiF3RV2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Jun 2022 13:21:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46212 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235638AbiF3RVZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Jun 2022 13:21:25 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 479FC3206C
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 10:21:24 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id k15so5691164lfv.11
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 10:21:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:user-agent:in-reply-to:references
         :message-id:mime-version:content-transfer-encoding;
        bh=BohL4XV8r1xt0c24TIuYDlP8R/meGuCrMEtn1MhTCXI=;
        b=wuWu6XFubEpJUzf4oKOWPwR/Ni5MgstHBQVZSoGrPo5OQ2j/JJzHSOIpseOT4tlYiz
         EKu+RQ7K4KvLKZ7znlUg+z+9D1VlMaxHwjHzk6YXNYIaylEOwy6Ab3O6RHruoLzS7BKo
         WUDfTBxkJxsbSj8c9OOzEAIG13agptse6eg9/eemuFzwt7nb+xD3hj7Z7WccXc+LtOHI
         9M6BjnFxAiHGYtYzu8ZZDsbcKJjLfu3jswLr8kDqoDJtCct2HASjWexULB+p2qxuC7lZ
         q21XvRA3OCKGJK7KJuvyer3VWn6T6iT84/pRyhlMMu3Vz1Fecu8iIPPKa7hcC/T+Tk63
         lwKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:user-agent:in-reply-to
         :references:message-id:mime-version:content-transfer-encoding;
        bh=BohL4XV8r1xt0c24TIuYDlP8R/meGuCrMEtn1MhTCXI=;
        b=y97hTQPkNShWJvE/ERDaB986I+GTer2E9o+RD9NhZsIOUW7t0owylk2Tor6UHYK5Du
         EH6bjKIaxRGu8tUBVrS+9++Wxx5rvl1qtc+l+sne5g7l1ny9H58sawAWFRvjoJKJyLZS
         qkyFwgtzEM79V/LmAhdtnjbSt5yi5X8hKRgQjbhB7Xf8hw9r0P7qUosEsLsaBk2fmew2
         VkSy1DhPPqB0b1/PeslNHVMfqD9eNAL59UkBcp2sm7Yn1P6j14EOa9tCHlnloi9XVkbP
         QrBXehAYArCvSepafuEUjPB59/w8HD9ONhcfOCTrq2dyc0iwMONkfHuleGC5d+dItJih
         WPGQ==
X-Gm-Message-State: AJIora8lm66CMSG+Q/mbSX6Vu4Iz14c6zCFDjqGW5jw036jQu6fEygEa
        fmYgH8+Uqofb+AtjauLz43FXDg==
X-Google-Smtp-Source: AGRyM1sR1CtTf9+8L+GphpYCYpwDNnxyY1KqkI8/i9uzVJT0bmWYlpGK15LRaDnHmM45M+BszRz83w==
X-Received: by 2002:a05:6512:139f:b0:47d:c633:2fa7 with SMTP id p31-20020a056512139f00b0047dc6332fa7mr6704763lfa.513.1656609682669;
        Thu, 30 Jun 2022 10:21:22 -0700 (PDT)
Received: from [127.0.0.1] ([94.25.229.210])
        by smtp.gmail.com with ESMTPSA id bi16-20020a05651c231000b0025a66b3fc45sm2765061ljb.97.2022.06.30.10.21.21
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Jun 2022 10:21:22 -0700 (PDT)
Date:   Thu, 30 Jun 2022 20:21:18 +0300
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>, robdclark@gmail.com,
        quic_abhinavk@quicinc.com, sean@poorly.run, airlied@linux.ie,
        daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
CC:     quic_mkrishn@quicinc.com, swboyd@chromium.org,
        bjorn.andersson@linaro.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, bryan.odonoghue@linaro.org
Subject: Re: [PATCH 5/7] dt-bindings: msm: dsi: Fix clock declarations
User-Agent: K-9 Mail for Android
In-Reply-To: <20220630120845.3356144-6-bryan.odonoghue@linaro.org>
References: <20220630120845.3356144-1-bryan.odonoghue@linaro.org> <20220630120845.3356144-6-bryan.odonoghue@linaro.org>
Message-ID: <CD1AA865-0891-4160-A920-FDB65BFC4087@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 30 June 2022 15:08:43 GMT+03:00, Bryan O'Donoghue <bryan=2Eodonoghue@li=
naro=2Eorg> wrote:
>When converting from =2Etxt to =2Eyaml dt-binding descriptions we appear =
to
>have missed some of the previous detail on the number and names of
>permissible clocks=2E
>
>Fixes: 4dbe55c97741 ("dt-bindings: msm: dsi: add yaml schemas for DSI bin=
dings")
>Signed-off-by: Bryan O'Donoghue <bryan=2Eodonoghue@linaro=2Eorg>
>---
> =2E=2E=2E/display/msm/dsi-controller-main=2Eyaml      | 23 +++++++++++++=
------
> 1 file changed, 16 insertions(+), 7 deletions(-)
>
>diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller=
-main=2Eyaml b/Documentation/devicetree/bindings/display/msm/dsi-controller=
-main=2Eyaml
>index fd9d472437853=2E=2Eb24ba6c346a77 100644
>--- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main=
=2Eyaml
>+++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main=
=2Eyaml
>@@ -28,22 +28,31 @@ properties:
>     maxItems: 1
>=20
>   clocks:
>-    items:
>-      - description: Display byte clock
>-      - description: Display byte interface clock
>-      - description: Display pixel clock
>-      - description: Display escape clock
>-      - description: Display AHB clock
>-      - description: Display AXI clock
>+    minItems: 6
>+    maxItems: 9

Please leave descriptions here=2E They are better suited for the clocks ra=
ther than clock-names=2E

With that fixed:

Reviewed-by: Dmitry Baryshkov <dmitry=2Ebaryshkov@linaro=2Eorg>

>=20
>   clock-names:
>     items:
>       - const: byte
>+        description: Display byte clock
>       - const: byte_intf
>+        description: Display byte interface clock
>       - const: pixel
>+        description: Display pixel clock
>       - const: core
>+        description: Display escape clock
>       - const: iface
>+        description: Display AHB clock
>       - const: bus
>+        description: Display AXI clock
>+      - const: core_mmss
>+        description: Core MultiMedia SubSystem clock
>+      - const: mdp_core
>+        description: MDP Core clock
>+      - const: mnoc
>+        description: MNOC clock
>+    minItems: 6
>+    maxItems: 9
>=20
>   phys:
>     maxItems: 1

--=20
With best wishes
Dmitry
