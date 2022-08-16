Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA80A59574C
	for <lists+devicetree@lfdr.de>; Tue, 16 Aug 2022 11:58:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233384AbiHPJ5u (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Aug 2022 05:57:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233949AbiHPJ5T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Aug 2022 05:57:19 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BE50BD4FF
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 02:22:04 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id d14so14034067lfl.13
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 02:22:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=Cc5a/Z1OZQ/Sp4oex9dmkDkQnrPr8Y8hlCBI2uCYHzA=;
        b=fiDRi2HZhnLH0aZUZxx5zMFYg+kRxqfZ8b/gbzXvdbEOMUSsLkKCvcNynL4hySDQxA
         m1GK8w5qxNUXZbhnbUOAb/RWoVguEnK7mq6wmLTVFwGDw++AVwE97trf0cZJGRUKHk4B
         ugdqIQgEN/iEh8C4L4b5JRrnQ/26tifMaIyc4O7HpNoSyICCI3YfXHi6BEJAVxkwfsoC
         4dXDHxU+eadTKBUHD1fgqE6Zq3Hmseu0E10W0cwd/dRDKo7b7wWBN7zhjkCK4R6N9lSf
         qRZ/bk+TKFGA2FewRcrhJcWB7mn/MYynRQCArUicMErP3l3KcqAYTACWZ1/r4jHH8EoE
         HRLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=Cc5a/Z1OZQ/Sp4oex9dmkDkQnrPr8Y8hlCBI2uCYHzA=;
        b=DAIlQnINRjKvgTJfm+YAut7r/IGC69QxO2TbZK4LNHJobbaBhTHYRUioRcl1iC/bsQ
         TjcSRsStP4pKRZ3CK0L6wVdkr15OIW+Qafcqt67OdLtIRZH44ZfFuilqh+XnbVCwbZuy
         vXdEhhyZlupIOGdBBA9araKbNPZbo29zzuItkp8R8YnPJzSAV7OK01yb5BKROUJt0w8i
         ghu1bLxK7XaF9IQy6yv37gIHWP8YGCbZ/0WEGx61pZ3KYTSgQWfswFX3mR0pN6iEp67Z
         WJMFakeTC+0UYPrr3ykK3j0WH1Xyx+KVudS9forb5c/Pp8uVwGKNbLOPkbNjEMKeE/p7
         qXHA==
X-Gm-Message-State: ACgBeo2RGWiuqQ++gCtI7EaGA5LPOxlihYDB0q3ykGWEqdtoP0Mt3mV+
        2mCMizxYVaaAYiZSw7LkS1vq7w==
X-Google-Smtp-Source: AA6agR7LFK/9gYrW8u+lnQRIAyItIlW8HzneqHrf3znVQXnPj5MscIKAG/LghM5wSDnWni05dkHGvg==
X-Received: by 2002:a2e:80da:0:b0:25e:6d34:6169 with SMTP id r26-20020a2e80da000000b0025e6d346169mr6447417ljg.531.1660641722837;
        Tue, 16 Aug 2022 02:22:02 -0700 (PDT)
Received: from krzk-bin.. (d15l54g8c71znbtrbzt-4.rev.dnainternet.fi. [2001:14bb:ae:539c:1782:dd68:b0c1:c1a4])
        by smtp.gmail.com with ESMTPSA id s17-20020a056512215100b0048aea84fa80sm1335691lfr.87.2022.08.16.02.22.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Aug 2022 02:22:02 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     yong.wu@mediatek.com, robin.murphy@arm.com, lee@kernel.org,
        angelogioacchino.delregno@collabora.com, robh+dt@kernel.org,
        tinghan.shen@mediatek.com, mandyjh.liu@mediatek.com,
        will@kernel.org, joro@8bytes.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-kernel@vger.kernel.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        iommu@lists.linux.dev, linux-mediatek@lists.infradead.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: (subset) [PATCH v4 02/20] dt-bindings: memory: mediatek: Update condition for mt8195 smi node
Date:   Tue, 16 Aug 2022 12:21:59 +0300
Message-Id: <166064169630.37858.3837655509098916044.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220729063208.16799-3-tinghan.shen@mediatek.com>
References: <20220729063208.16799-1-tinghan.shen@mediatek.com> <20220729063208.16799-3-tinghan.shen@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 29 Jul 2022 14:31:50 +0800, Tinghan Shen wrote:
> The max clock items for the dts node with compatible
> 'mediatek,mt8195-smi-sub-common' should be 3.
> 
> However, the dtbs_check of such node will get following message,
> arch/arm64/boot/dts/mediatek/mt8195-evb.dtb: smi@14010000: clock-names: ['apb', 'smi', 'gals0'] is too long
>          From schema: Documentation/devicetree/bindings/memory-controllers/mediatek,smi-common.yaml
> 
> [...]

Applied, thanks!

[02/20] dt-bindings: memory: mediatek: Update condition for mt8195 smi node
        https://git.kernel.org/krzk/linux-mem-ctrl/c/9f8fb8032febf594914999c33493c682eaf138cb

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
