Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A7765A0925
	for <lists+devicetree@lfdr.de>; Thu, 25 Aug 2022 08:51:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230161AbiHYGuj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Aug 2022 02:50:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37664 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236412AbiHYGu0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Aug 2022 02:50:26 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 439AE18B05
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 23:50:23 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id d9so2425222ljl.8
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 23:50:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=/aDZ/gNecubrSglCZKC6R+L0GMkm5WzoSscWaItrmmw=;
        b=Bv/Z9Kbd6gW9pMSOIhwj5HVjw92Ht7qYDkxXv232ofbc58J1e40xp2nzz07qHYllOM
         PI1pDeVzuWAZMGdP86qd9QKx43vNhVNIhUJVPaDNlzznVu0QagUuBSUPNOstTYPNXsDu
         qcAjPziSgLZBqaVNAaIUx2V3u/MwxiJupqte23G9cgo75Ji9Gzj7LUkoOsYbpuHAnKvX
         Bf9chbYAZ210qPC0kj6k2/nv64RPjwUXkmiLURf2QH9UKPdZZjU8Og/lQssPkhkyr6Ps
         uvQId6BZKbp6XCOuHZSgT5o1PrK8xzf5waU7J1OSWBDfpn8TZ/YRiFKpcE0diZ3lnVNL
         2zLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=/aDZ/gNecubrSglCZKC6R+L0GMkm5WzoSscWaItrmmw=;
        b=3EwNljNIqpEYAeAWfxPyUJ5ICOyQDWFSuZhTPkEbNptlqL/RzGAn0zyubhf9iC8FRO
         GaN4CT0L39SILb2plwFdjkT2s8jXNeFge+uLsVf4WNSHEGYwP50KrqFqoD/yXIDYQDIC
         YvyMMgglgR1SoEqEWor2OnY2QxfDw0F9PWHdQFd9bf5oZvY2QPwZWDcjII4nVpqrEpFO
         XuY7SfVWBNir4AHaTQM+G9DxLNeNhlmMqKDu/PcpH+uHePF89+zDMPMJiM0kGWSoOwN4
         /s0pSANio5N7bJCqOZbYxlJTr8CvitQ7YBNAPOuFPwILVZo2ToV+Uwa4CYiaRqYYcwE9
         UimQ==
X-Gm-Message-State: ACgBeo3rlAa+hhMMKM9r4hfLfRqZa6gEvKThk36hO3QYNQfZAUVYI1hU
        /rU5xtlm1T78hmNBrmif3ZGwrg==
X-Google-Smtp-Source: AA6agR5PR7ybmEgH13umjwUaqHYI9JYVvqCS4U2sV3lefMC531xA1KVP9foQDczRqV1gIJgKsAGwTg==
X-Received: by 2002:a2e:b746:0:b0:261:cc50:35cf with SMTP id k6-20020a2eb746000000b00261cc5035cfmr701857ljo.4.1661410221332;
        Wed, 24 Aug 2022 23:50:21 -0700 (PDT)
Received: from krzk-bin.starman.ee (82.131.98.15.cable.starman.ee. [82.131.98.15])
        by smtp.gmail.com with ESMTPSA id p24-20020a056512329800b0048b143c09c2sm321096lfe.259.2022.08.24.23.50.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Aug 2022 23:50:20 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     krzysztof.kozlowski+dt@linaro.org, chanho61.park@samsung.com,
        robh+dt@kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        semen.protsenko@linaro.org, devicetree@vger.kernel.org,
        jaewon02.kim@samsung.com, alim.akhtar@samsung.com,
        linux-samsung-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: (subset) [PATCH v3 2/5] dt-bindings: serial: samsung: add exynosautov9-uart compatible
Date:   Thu, 25 Aug 2022 09:50:19 +0300
Message-Id: <166141020446.21953.3639272669356222279.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220701015226.32781-3-chanho61.park@samsung.com>
References: <20220701015226.32781-1-chanho61.park@samsung.com> <CGME20220701015451epcas2p15355e8f1777824f73b402899c4afd40a@epcas2p1.samsung.com> <20220701015226.32781-3-chanho61.park@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 1 Jul 2022 10:52:23 +0900, Chanho Park wrote:
> Add samsung,exynosautov9-uart dedicated compatible for representing
> uart of Exynos Auto v9 SoC.
> 
> 

Applied, thanks!

[2/5] dt-bindings: serial: samsung: add exynosautov9-uart compatible
      https://git.kernel.org/krzk/linux/c/dfce69c8520592f1a20619050e6ded6275e9f25f

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
