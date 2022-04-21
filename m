Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B3C9F50A26C
	for <lists+devicetree@lfdr.de>; Thu, 21 Apr 2022 16:29:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1389333AbiDUOaf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Apr 2022 10:30:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1389278AbiDUOaP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Apr 2022 10:30:15 -0400
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 504493EB8C
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 07:27:24 -0700 (PDT)
Received: by mail-oi1-x22e.google.com with SMTP id r85so5774219oie.7
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 07:27:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=Ufjm8eQVOmHSq6mbSZuwdtOmOtgkiUv7cvs2d7Tsqzg=;
        b=lc88I4IrzjCDq0usz3Ap64eq6els4c0Q8dPBj3xtOtsvVg15OT65MhjcL1VTJ3rlGR
         r1n6vPBJyEGyrBZvAboUG/VOXBD2/rZIQ7jlSRy95NoPV09fJxSUGuZypZ33mmXYDknd
         1coVYs8aTrVmSwQpbK0+i4KTuq04CpyUT/8vxIvPxJR6RXSKVRduGsMDvopcy7yEBRRX
         KaaTc2HE7RA2bO8jBL1hzzhNYoN6/CBP1eFsXzCWQVST7gqCq+386VisxLwDfFF+IChF
         lkZGvy8W17oRUESRArTDYfh9Qv8a77ENtcaFVV8yM/MNZgivs1D9t4pvLkp/iHsiI75J
         2MbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ufjm8eQVOmHSq6mbSZuwdtOmOtgkiUv7cvs2d7Tsqzg=;
        b=ZuSgKnD3GNhFsWgn/7a14jHpVGDaHMIB0zGtV/XnbMKXD9C8CA03gzb5WMcSzGgGdA
         yzDwKEplRXD3NAd5avti3JhvlTcJK/W3XtFEAnN9eO8NBqtEI6RICNSng7qyIcJm6z/7
         eZkoBEahDo9e9vLkMxdY8rOga7QUIAsWiO5j+5yDYHd2u0Gtm3MPZ9DNxMBQ/QyyvUXV
         yOr5t8o6FdA89iJ7TQCH0yIA2GCtD1yjfq2rIKLN2zAybHl7ZHd0N9tB1soU5H0y5Oog
         ZA6WGhZjr/Vu6MClu67K+ceJtEQSjzogd2hGHmQmR+PjrBWqFMnXf+xSz05UpNlM9oFJ
         Uw8A==
X-Gm-Message-State: AOAM531cnapwm1pRF5fBNDnlFY3r3+t4hd40GQgDJtnHea51tExijH5n
        gm8dMIqOvMtj74XPIAyZqlDdgg==
X-Google-Smtp-Source: ABdhPJxxHRoVLE3Remv3U2pn0rDem4OQU5/ftPllny7x5E7b3nt4YxU+rbz6XgxbotrSgEfF98DB1w==
X-Received: by 2002:a05:6808:138e:b0:322:2dcd:dc7d with SMTP id c14-20020a056808138e00b003222dcddc7dmr4351042oiw.159.1650551243482;
        Thu, 21 Apr 2022 07:27:23 -0700 (PDT)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id s14-20020a0568302a8e00b006054e841915sm4296295otu.73.2022.04.21.07.27.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Apr 2022 07:27:22 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     linux-pm@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Georgi Djakov <djakov@kernel.org>,
        Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Vamsi krishna Lanka <quic_vamslank@quicinc.com>
Subject: Re: (subset) [PATCH 3/4] arm64: dts: qcom: do not use underscore in BCM node name
Date:   Thu, 21 Apr 2022 09:26:59 -0500
Message-Id: <165055095990.2574292.8000062145772271455.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220411085935.130072-3-krzysztof.kozlowski@linaro.org>
References: <20220411085935.130072-1-krzysztof.kozlowski@linaro.org> <20220411085935.130072-3-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 11 Apr 2022 10:59:34 +0200, Krzysztof Kozlowski wrote:
> Align BCM voter node with DT schema by using hyphen instead of
> underscore.
> 
> 

Applied, thanks!

[3/4] arm64: dts: qcom: do not use underscore in BCM node name
      commit: fc0e7dd6d2e2c9f8b2c6497a190ee29d8f3aef3a

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
