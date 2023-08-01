Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 386A176ACC7
	for <lists+devicetree@lfdr.de>; Tue,  1 Aug 2023 11:20:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232105AbjHAJT7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Aug 2023 05:19:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231981AbjHAJT0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Aug 2023 05:19:26 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8ED6A44B4
        for <devicetree@vger.kernel.org>; Tue,  1 Aug 2023 02:17:41 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-3fe1d9a8ec6so13674405e9.1
        for <devicetree@vger.kernel.org>; Tue, 01 Aug 2023 02:17:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690881456; x=1691486256;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hNhI+9VQvWbiJBwN1rE6OrRPhOX1EdA1Xn7je9kaQf8=;
        b=upxHVZn58HFzd0k+OMuD5NU/TpL6b/xYEFEHoZmFzEqWvAP444F+aDXHB1G7pc2VzR
         SRE9JW+4wT7wTPEfDrdMi8kzKbtl3632+aynPLlEb7wM2HSFaq/TTzsThyTOU0WMtZo9
         bCgRzzf3c95VN5lnU3qHXMv9ZMCI0Tl8M9Ix/krTa5R/8Ate5eYyYMlXE0BFrV4F3JrN
         ID5IcKRGCu4CM/f1FMmaQdv8isVbS+1SZLM3ErNoUYO16Cn2R5AyDecjQ9ypTJwgRo2G
         PMZ57mf9DRsXGVIGGxi7WUGJGt0SGiXvjBzgllRxBFV4ddkeDTkZdn7jo8ZrlI813VW9
         LUug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690881456; x=1691486256;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hNhI+9VQvWbiJBwN1rE6OrRPhOX1EdA1Xn7je9kaQf8=;
        b=ONQ3y3DtFRGNpgn4RNrBeQKul+DNub/JWiIGKze5+kBt+y8SAeApKbLukiGpfGNTgK
         yJnWopIXSucA0SxCnjME7Gp0lSzo6gGsysnhqxNiYhqlWwXFDknNtrf/aaSLWjZGSXA0
         tiJIkGeDdWvpyFhdaw6k1HdMpcOfkgjtgtW2TFkyNi/rA4jYHa1Jp3G27rwvT6R5dg5P
         0vRA6+xash68hTfd5B6eH0Fb624kwCTHxT4q2ncg9VvCmYvLWbGm7hB6sO+f0m01AwkL
         XWC/FiH7Hpxcwa8HYSREcWNg+LkQy9JJ81ydEBVnUD1+w1pAVPbYHqkFxCcoXeaIvJ02
         Usuw==
X-Gm-Message-State: ABy/qLYTZ/CXsXsRJz61o7bfo59pTkySek1gKSU+O/s/1ZZo3MTqGpRk
        zWUVGDzRkjBuBgxWQG/5iqZgJQ==
X-Google-Smtp-Source: APBJJlGUtKBun7QGdW0Syq7pYELabUOBAfMqSTMjItKjZmxXLaBeWWkjT7/UL5CMxkfLCNkC1RVjJg==
X-Received: by 2002:a05:600c:1d9e:b0:3fe:20f1:fb2 with SMTP id p30-20020a05600c1d9e00b003fe20f10fb2mr1840135wms.6.1690881455734;
        Tue, 01 Aug 2023 02:17:35 -0700 (PDT)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id f2-20020a7bc8c2000000b003fbc9b9699dsm13575810wml.45.2023.08.01.02.17.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Aug 2023 02:17:35 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, Komal Bajaj <quic_kbajaj@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
In-Reply-To: <20230801064025.17381-1-quic_kbajaj@quicinc.com>
References: <20230801064025.17381-1-quic_kbajaj@quicinc.com>
Subject: Re: [PATCH v6 0/2] nvmem: sec-qfprom: Add Qualcomm secure QFPROM
 support
Message-Id: <169088145482.47901.8484654769480683561.b4-ty@linaro.org>
Date:   Tue, 01 Aug 2023 10:17:34 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.2
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Tue, 01 Aug 2023 12:10:23 +0530, Komal Bajaj wrote:
> Changes in v6 -
>  - Removed '|' from description in binding.
>  - Removed the header inclusion under the example in the binding.
>  - Removed devm_pm_runtime_enable() api as there is no pm runtime handlers or users
>    in this driver as of now.
>  - Not keeping Bjorn's reviewed tag as removing the above mentioned api.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: nvmem: sec-qfprom: Add bindings for secure qfprom
      commit: 050cd7f49580f2710a11edbc11be5a7ec5b4d8ab
[2/2] nvmem: sec-qfprom: Add Qualcomm secure QFPROM support
      commit: 9c7f2bce8a0e26d162ba8de6706b2c0557bb63cd

Best regards,
-- 
Srinivas Kandagatla <srinivas.kandagatla@linaro.org>

