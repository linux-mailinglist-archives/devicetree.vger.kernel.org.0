Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 041875ED5BD
	for <lists+devicetree@lfdr.de>; Wed, 28 Sep 2022 09:11:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233253AbiI1HL4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Sep 2022 03:11:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229951AbiI1HLz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Sep 2022 03:11:55 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5191DBF5
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 00:11:54 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id g1so1387406lfu.12
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 00:11:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=1YC5uoRUHjlv9KudkG2S3BdKQ6+kwRJS+62mrDBTkJ0=;
        b=vvNCgSgXOYWQR6gpDU414goVmJvylFPTjGvqcMGYfeZCKNuGei6n9V8jAE/6gm2agN
         aHug4WTKBc5m6AqyJu9fEfYMkm6sElB2vYxMEWdM7dFKJF3lZCeESmRKr8iM4BzxCPJX
         MYcGNVi+8jlcQuyrwLpeKhNL8mb6Nt0lzpVUMVj+Ex+cgbthU+6/z2RujvbbqQGB0Sr6
         7eGYAez5VnCrJ5pEuApU0f740VbuOt2pkph5abApPBydx6xlf1h2dN8DTplRVCqXozqn
         SVBCwlQ0zVUXcCnWDJqgTXWiIdHoh+NlkhcvMDu9vAxYDFC0gdv4C7Fe0Uh8KzfHRjoM
         2bdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=1YC5uoRUHjlv9KudkG2S3BdKQ6+kwRJS+62mrDBTkJ0=;
        b=xHLbL12QoTbiQIufF2FlWlayUKdPcV+HJPFpZnftO4un/TF4ViGYbpQd5xSnuOTo/i
         kYFmYflIv5YUykAEL1ywZ2v85+TdROWTkorATeNfAFrPLxSG/aVSNyL1TtVT/+91uNmM
         uNp/Xjy+MY8J3qee3bjEJWlR45K9dppeDHsE55X6I/s6AyWN1L6aRXpk36ax+bW50m6c
         1OITWns5phUugN6gXXI+CwS28b6YiALtBKBXGn2hT/CjL0NHWRSk1VwMCOVgXjM+mW57
         NONEmxmCg4W0iwBDIeDdtGUpm2VmZ3qAL/ok55tx9m8mPB04nKKyB75SXtycyiFvNKkb
         4gpQ==
X-Gm-Message-State: ACrzQf3rr4CzhLioU9gIkn1I4ENN0Q1Ds0ukFBdnObHjorT9GgurgWKc
        ruWUr5LZPzcIEfDmDZfWtjDNKQ==
X-Google-Smtp-Source: AMsMyM4kDwFhn3XpYGWQTUkkZjWgslw857JjEChsxG915F3r97yYELg2M1N+/JjYzVp7a+vkC8YK0A==
X-Received: by 2002:a05:6512:150e:b0:492:d9fd:9bdf with SMTP id bq14-20020a056512150e00b00492d9fd9bdfmr12449879lfb.583.1664349112733;
        Wed, 28 Sep 2022 00:11:52 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id 20-20020a2eb954000000b00261e7244887sm347092ljs.60.2022.09.28.00.11.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Sep 2022 00:11:52 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     linux-arm-kernel@lists.infradead.org, marex@denx.de
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        christophe.kerello@foss.st.com, robh+dt@kernel.org,
        mcoquelin.stm32@gmail.com, devicetree@vger.kernel.org,
        alexandre.torgue@foss.st.com,
        linux-stm32@st-md-mailman.stormreply.com, linus.walleij@linaro.org
Subject: Re: [PATCH] dt-bindings: memory-controller: st,stm32: Fix st,fmc2_ebi-cs-write-address-setup-ns
Date:   Wed, 28 Sep 2022 09:11:50 +0200
Message-Id: <166434910296.10148.2597210651020575227.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220926222003.527171-1-marex@denx.de>
References: <20220926222003.527171-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 27 Sep 2022 00:20:03 +0200, Marek Vasut wrote:
> The property st,fmc2_ebi-cs-write-address-setup-ns should really be
> st,fmc2-ebi-cs-write-address-setup-ns (there is underscore _ between
> fmc2 and ebi and there should be a dash - instead). This is a remnant
> from conversion of old non-upstream bindings. Fix it.
> 
> 

Applied, thanks!

[1/1] dt-bindings: memory-controller: st,stm32: Fix st,fmc2_ebi-cs-write-address-setup-ns
      https://git.kernel.org/krzk/linux-mem-ctrl/c/587f9891ec9661e16df7e5268543416a7d8cb547

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
