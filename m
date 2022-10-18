Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C8E14602D2A
	for <lists+devicetree@lfdr.de>; Tue, 18 Oct 2022 15:39:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230513AbiJRNj5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Oct 2022 09:39:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230470AbiJRNjx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Oct 2022 09:39:53 -0400
Received: from mail-qt1-x82d.google.com (mail-qt1-x82d.google.com [IPv6:2607:f8b0:4864:20::82d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62CAB21E14
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 06:39:51 -0700 (PDT)
Received: by mail-qt1-x82d.google.com with SMTP id cr19so6344698qtb.0
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 06:39:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4ItLv3MrqFjkUjgy6D960E6gyycJQXgxPRZWuas15FM=;
        b=tTSPX3c/2Nmk9ShKjuwCzhVqnKOI59gBJpa/06ZeOfsicSC+rf4JFeV20qFwNsjydK
         GceXru9FHsrzxm1denxxeXHg/aQLihq2j027YT4rkaGQoltRTOzC3zkjLSL7wCNJtR3y
         R9RIn+ikEtMC8u+Q7n2u+MVJ94QMo2MHI5itvcIldQAovUxE1W2xs/uT/pBRIwIk2fko
         4e9a6Uaz3FofjBFJvGOj8I42qjjb8rAHc9RO9Mj/iYFoHqxoARYWr4AEZ/d6iJw0KaGs
         JfkVG5moiDfHxQHxfR3XPjCMuits0JvzwgkccLIJQiK1DewiSkInTvWBzPiC4J5cIDje
         FYEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4ItLv3MrqFjkUjgy6D960E6gyycJQXgxPRZWuas15FM=;
        b=KaQAK6z98Gm1dI1RS5cQFFHcojvuwda+gIu7UG94E5jEMkoxJqLv8lYsHLI8miwSTQ
         DKTVeOAoOq3DdSELz4DWXbh8ePSisBDHZKoxMQeY+/A8zUgdFQ7wZ/KsFhqxxYJsc6Iy
         s1tDDoAFhyPqztb3PM5LiOeo1TXAvRbea4DqYmFlBAs4daRjRdI1aqpz4v6cMLCK9tF5
         BYWsHJkuTT0N2jOAwfj6LovtoFI5/SffGyaJvabpaBsmfS6yr9wpa7nZHKV2/sDMdeTl
         Xd/GO03JeX5Ce9Mmq7CqDzOy/FDxAryguxarbH7W/8zlIfqgD4AhiWVXxRece5nEjF0p
         m+Zw==
X-Gm-Message-State: ACrzQf1vlS8KMryloY2FSp6hmHGAWv09n2hAW+gleJDU6EIOhQEcV8OE
        G0N9rZdz9V4bF7P5FRMEyyVH4RNrJmsSZg==
X-Google-Smtp-Source: AMsMyM5WX5G1+bv+TTjJ8KAiYFJyFCJ7K1wLBkHNS5+MrEGAk9iZiPB+umJcqXwMOHI/1sVsaTt0bg==
X-Received: by 2002:a05:622a:147:b0:39c:dc0d:7d0f with SMTP id v7-20020a05622a014700b0039cdc0d7d0fmr2026339qtw.281.1666100390342;
        Tue, 18 Oct 2022 06:39:50 -0700 (PDT)
Received: from krzk-bin.MSRM (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id t24-20020a37ea18000000b006c73c3d288esm2368713qkj.131.2022.10.18.06.39.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Oct 2022 06:39:49 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
        Rob Herring <robh+dt@kernel.org>,
        Andrew Jeffery <andrew@aj.id.au>,
        Joel Stanley <joel@jms.id.au>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Jae Hyun Yoo <quic_jaehyoo@quicinc.com>,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3] dt-bindings: arm: aspeed: adjust qcom,dc-scm-v1-bmc compatible after rename
Date:   Tue, 18 Oct 2022 09:39:45 -0400
Message-Id: <166610038083.12522.4054828286732887763.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220811062953.5976-1-krzysztof.kozlowski@linaro.org>
References: <20220811062953.5976-1-krzysztof.kozlowski@linaro.org>
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

On Thu, 11 Aug 2022 09:29:53 +0300, Krzysztof Kozlowski wrote:
> The Nuvia DC-SCM BMC board compatible was renamed in commit
> 7f058112873e ("ARM: dts: aspeed: nuvia: rename vendor nuvia to qcom"),
> so adjust the bindings as well.
> 
> 

Applied, thanks!

[1/1] dt-bindings: arm: aspeed: adjust qcom,dc-scm-v1-bmc compatible after rename
      https://git.kernel.org/krzk/linux-dt/c/c74eb454dbf482b29d53e7bcc2af74a53b516fa3

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
