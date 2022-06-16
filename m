Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4FF9754EB93
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 22:49:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1378753AbiFPUsW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Jun 2022 16:48:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1378750AbiFPUsF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Jun 2022 16:48:05 -0400
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35FB739B99
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 13:48:01 -0700 (PDT)
Received: by mail-pl1-x62f.google.com with SMTP id m14so2192959plg.5
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 13:48:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=5B/YPBqE1i3XYaE736ZQJ2S0S9D1ypIuY4zrve4dG1s=;
        b=TPYF5FmXJNP608UOhddPidwwhlgQwZqQcb5S/bcTJqHYWPar9mVox2HtlXJdbKjwUU
         RuVpNqBgeu3ym2EsTdZb1V+Ha2G8FK9KhLFUBgjMdIxwA/TJNkSFqIYPPYuxV0BtXS2r
         jRguzPoXEb8vmuIRGX1gv9h2+KOrESm2Gmo1jlTCyjBBya8CzXhr159MCFvtn30Yis7+
         dR+3zKb+lHnDtxfkDs6gvy9wM/9/8FVjcjJJX0x+esC8GAe6otnAj+EAiyukH4eIF/eM
         OVWbTpvfdRKDbfxQBiQpYaRzKGfYhHDwaQBgrVdeIbkBNZjpRy+9iZlVdVD2VldeTlMh
         45Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5B/YPBqE1i3XYaE736ZQJ2S0S9D1ypIuY4zrve4dG1s=;
        b=5By5GrNmztym1NseSGBajnzyYrAsaO0rBK7rj5DKXUgpxoREIzuu88wZZ03yp05FEM
         G/qRyqA2WyeOGVwAJLbV7XS3vvd4r5K4WF5oTEFTseafAMrnmdca+yzc3X1g9z/3rw8K
         6lN0Hkf7rqkSQuyVrN45GJw8pnvZ2+Jt4jG4pRfwuTTBkZjrwS3c+9IIqHPhBUspTMB+
         M/wTzhEhkszgnZMRc/lfE66b7S4fxbCPUB4SBod21ewNY9ujsuPXkZanIBlOmSoxls/p
         gXvebzjsPeilNMjWW27wtpMM1hhD64IaEK6WMMB7CRlEvw8BQll9hNXalHgfHtdmSCjq
         mSxg==
X-Gm-Message-State: AJIora8G6zVn66xnVmHtmgdbMuQuqPyt9UAZnGsngYi3WZxY5o8DaAbF
        +O9XUH2nbDxi+QlCG7NtXrwE2A==
X-Google-Smtp-Source: AGRyM1sXiNVSP9UuwIb+c0Qc2nM5vMtaLbW6JXD81fUTqZePRAebivsREb7eIoGboiPjOHruHfiQqw==
X-Received: by 2002:a17:902:e80b:b0:168:b645:849e with SMTP id u11-20020a170902e80b00b00168b645849emr6157852plg.26.1655412480916;
        Thu, 16 Jun 2022 13:48:00 -0700 (PDT)
Received: from krzk-bin.. ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id 203-20020a6218d4000000b0051ba0ee30cbsm2165453pfy.128.2022.06.16.13.48.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jun 2022 13:48:00 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     soc@kernel.org, Viresh Kumar <vireshk@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        Shiraz Hashim <shiraz.linux.kernel@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: spear: adjust whitespace around '='
Date:   Thu, 16 Jun 2022 13:47:22 -0700
Message-Id: <165541242280.9040.16469082540600574073.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220526203815.831383-1-krzysztof.kozlowski@linaro.org>
References: <20220526203815.831383-1-krzysztof.kozlowski@linaro.org>
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

On Thu, 26 May 2022 22:38:15 +0200, Krzysztof Kozlowski wrote:
> Fix whitespace coding style: use single space instead of tabs or
> multiple spaces around '=' sign in property assignment.  No functional
> changes (same DTB).
> 
> 

Applied, thanks!

[1/1] ARM: dts: spear: adjust whitespace around '='
      https://git.kernel.org/krzk/linux/c/194f47c31ab6c37e4557eb60b382704296c10925

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
