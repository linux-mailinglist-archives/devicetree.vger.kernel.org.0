Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D6ACA5A0DBB
	for <lists+devicetree@lfdr.de>; Thu, 25 Aug 2022 12:18:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230196AbiHYKSX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Aug 2022 06:18:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240538AbiHYKST (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Aug 2022 06:18:19 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C49F6A3D08
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 03:18:16 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id bn9so11405368ljb.6
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 03:18:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=putxVl9ENmbhHrXSWcl6FyJE/X5QiuAAPDl5QaFWSQM=;
        b=j3CEyDHc+li48xfu710HLfep4UWJhRuCHnOy/zy54nW5oprSJYRpFQ6yGucLGyQRhM
         qYclPbp3Uvzd9EhZydOnGQ0acDpkeiAbd4B8Ng4YHv99/KiU5zaVmLHMxyTj30FPSrO5
         +qztjXyJhJBL6htQk3n7d0fjSZY3NrgEIx3cCTpYNVmhEJe0Zzv7HKB7TqFd0Y+RKePb
         PZV4w+vTdJwVEKvBiIaxK9RZJdIGZHl2ShnMVPr4tB1quwbL7OcOQkJ8JD2uezATUiuS
         K2CE5q7oKj3fp84jOQIULopWBsonYfA8hb9IEQXsxI0TBcM1DP6CuX2V3zq6fT7uwrxT
         a+0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=putxVl9ENmbhHrXSWcl6FyJE/X5QiuAAPDl5QaFWSQM=;
        b=dzxpBfH2y8gJ3Ex4a60acb/Xeaxe79SVgstDhl8Ja12jvcXLNCm+wyqhuvxrlY2zft
         j17uT6Mvr06/tRbVMDeo1g6/Pp0umGdV+bxzdmMYZ1Fi7PCx21tEU9ycrRCIB6IiANtW
         k2NcZ3W824bC3Bz/EjomVIR3EjqdNOMfQnOqJta5f75Y/Bvdv4llcJOXYvJznQQKwom5
         Y05o5WhjIbCKdSHFGVAZC46asNOS2PSHdkvEyXiAv1ajoh2/SwQOO6XGtmXjkbbKZpWt
         /iYUS+mrYWpQtaUgd4+NWbT4MrNMs/gRcHBVUqXl+SpQVSJFMRBF4QpwnxRfrv7SYicX
         G92g==
X-Gm-Message-State: ACgBeo2dfo/R2O2M4WwjI6sp1lbKGivmFACXg/Z0t51Ch3XTCHkUyURj
        vic0zp9e2Hv4KznVWTrCoKR7eg==
X-Google-Smtp-Source: AA6agR5HjSwLvMnQV8ANmtvhW9Y87E0VDeBurvMiO4LcD0gOZG16AqGWvtNAwBpyt5bVZ2elfs2nwQ==
X-Received: by 2002:a2e:80c9:0:b0:261:e8f2:542d with SMTP id r9-20020a2e80c9000000b00261e8f2542dmr537264ljg.430.1661422695101;
        Thu, 25 Aug 2022 03:18:15 -0700 (PDT)
Received: from [192.168.0.71] (82.131.98.15.cable.starman.ee. [82.131.98.15])
        by smtp.gmail.com with ESMTPSA id x25-20020a056512131900b00492c59a4bccsm413248lfu.206.2022.08.25.03.18.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Aug 2022 03:18:14 -0700 (PDT)
Message-ID: <0454105e-38f5-ea8f-0c1f-1d1fd835ea6c@linaro.org>
Date:   Thu, 25 Aug 2022 13:18:13 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2] dt-bindings: arm: mediatek: mmsys: change compatible
 for MT8195
Content-Language: en-US
To:     Bo-Chen Chen <rex-bc.chen@mediatek.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com
Cc:     jason-jh.lin@mediatek.com, nancy.lin@mediatek.com,
        ck.hu@mediatek.com, chunkuang.hu@kernel.org,
        angelogioacchino.delregno@collabora.com, hsinyi@google.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20220825091448.14008-1-rex-bc.chen@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220825091448.14008-1-rex-bc.chen@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/08/2022 12:14, Bo-Chen Chen wrote:
> From: "Jason-JH.Lin" <jason-jh.lin@mediatek.com>
> 
> For previous MediaTek SoCs, such as MT8173, there are 2 display HW
> pipelines binding to 1 mmsys with the same power domain, the same
> clock driver and the same mediatek-drm driver.
> 
> For MT8195, VDOSYS0 and VDOSYS1 are 2 display HW pipelines binding to
> 2 different power domains, different clock drivers and different
> mediatek-drm drivers.
> 
> Moreover, Hardware pipeline of VDOSYS0 has these components: COLOR,
> CCORR, AAL, GAMMA, DITHER. They are related to the PQ (Picture Quality)
> and they makes VDOSYS0 supports PQ function while they are not
> including in VDOSYS1.
> 
> Hardware pipeline of VDOSYS1 has the component ETHDR (HDR related
> component). It makes VDOSYS1 supports the HDR function while it's not
> including in VDOSYS0.
> 
> To summarize0:
> Only VDOSYS0 can support PQ adjustment.
> Only VDOSYS1 can support HDR adjustment.
> 
> Therefore, we need to separate these two different mmsys hardwares to
> 2 different compatibles for MT8195.
> 
> Fixes: 81c5a41d10b9 ("dt-bindings: arm: mediatek: mmsys: add mt8195 SoC binding")
> Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>
> Signed-off-by: Bo-Chen Chen <rex-bc.chen@mediatek.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
