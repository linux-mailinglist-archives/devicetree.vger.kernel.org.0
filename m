Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D16170541B
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 18:39:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231180AbjEPQjh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 12:39:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231411AbjEPQjf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 12:39:35 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8229E134
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 09:39:33 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-50db7f0a1b4so14007938a12.3
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 09:39:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684255172; x=1686847172;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6o3iO64wtAww0ZhusXTfft+qEjTOhpLN6/IvMCHt+EY=;
        b=jpqbO3ZeIrms/ZDeWT04T9nqYTCAFh9hSUmBKMokjgdH4wPmpt9KcC7xRJh8INyTOJ
         qhN9poKIHpkEkd24IXJO2xdk1MLFyZ/hE9Ks2IsvQvafvWAZFNZgD7EmeidzX03L2ryu
         0U/mxkXf8qNMMZ6Fgx+b/VGqTlDVQdQ1WoKaOUz3EPd9cVhDbLzwG7mSd4OieyDZbfD4
         kX4Mijq/2rdTtR2JX8HSlDp6KJkYnTEKWZoa7fH185h0yLC6Ctyt3Hn/IyOvl98u9yMT
         BEnZaCpjbTk0OoTH19RgQPGMrSZxUOHowYlJtI1V9R+tsWDzpdxflvpf4em+lC633oIx
         yZwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684255172; x=1686847172;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6o3iO64wtAww0ZhusXTfft+qEjTOhpLN6/IvMCHt+EY=;
        b=eMj7l6V+I0Mi096U8xIj8gTPAlcvHlwCuwiRRSS/KeX07LNm5c+ejAxghp3RutMkFS
         hwSD400F5sYuEyyTaJb+UkMaI+wuySAdBAOJJurnFXLR7A9ieo8hnPhgEmfHtArsrEV6
         r8yXq490RPiKbULviszoMw3mAx0k1n0OJ6nkit7Will5c1B953qNeUFtxf+RoIx/7Frt
         jw13FBWwcbXO+JnTg9hEUBnnZ5tf41UE6lYCGX8neKjzbox8U5TjAp7087+94hMIj7OT
         71x6JWAr0oj7K8BCsXRBww1Cxev7zrEzvcvrQPqYVHBV+takzaTGfNrj3PyvMtop3mMC
         BOrA==
X-Gm-Message-State: AC+VfDwIF0SweqtsaucnKnUzdtrPHdEnchofa6uZVgJQZhOgsxSxJWty
        r3NWtTZI9Se9AZUCx+hxO9QOQw==
X-Google-Smtp-Source: ACHHUZ5p4TWaiCYVpEvyKbky7CU1W0H+LzCfOenbVk3tFV9tgqNixy8iQMl9D2uxZxDZBqUGvZXZJg==
X-Received: by 2002:aa7:c60c:0:b0:50b:d755:8acc with SMTP id h12-20020aa7c60c000000b0050bd7558accmr28507283edq.34.1684255172074;
        Tue, 16 May 2023 09:39:32 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:77d1:16a1:abe1:84fc])
        by smtp.gmail.com with ESMTPSA id d4-20020aa7c1c4000000b00504a356b149sm8278191edp.25.2023.05.16.09.39.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 May 2023 09:39:31 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Khuong Dinh <khuong@os.amperecomputing.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] arm64: dts: apm: add missing cache properties
Date:   Tue, 16 May 2023 18:39:22 +0200
Message-Id: <168425511041.243008.11215407401273783748.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230421223139.115044-1-krzysztof.kozlowski@linaro.org>
References: <20230421223139.115044-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Sat, 22 Apr 2023 00:31:39 +0200, Krzysztof Kozlowski wrote:
> As all level 2 and level 3 caches are unified, add required
> cache-unified and cache-level properties to fix warnings like:
> 
>   apm-mustang.dtb: l2-cache-0: 'cache-level' is a required property
>   apm-mustang.dtb: l2-cache-0: 'cache-unified' is a required property
> 
> 
> [...]

Applied, thanks!

Please let me know if this should go through any other tree.

[1/1] arm64: dts: apm: add missing cache properties
      https://git.kernel.org/krzk/linux-dt/c/0022cec7edecd5ea6796dfe0d75330c55dd07a67

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
