Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F0382690628
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 12:10:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229963AbjBILKx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 06:10:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229975AbjBILKu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 06:10:50 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A5161C7FF
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 03:10:48 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id l37-20020a05600c1d2500b003dfe46a9801so1262923wms.0
        for <devicetree@vger.kernel.org>; Thu, 09 Feb 2023 03:10:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=swa/BfcyEFpl7NOCIb53d06K9cNYUSLtSu5qC6x2uxc=;
        b=Y6ztoIHrqlyiXXcUTHRWspimUfTqlqMcZslf2Em3cua+clq6zvdTlY2Q7rMJ2E8Dg4
         Qn/W4pKf60zCkXgmqRRtwEmeZLYmC6K6rPE3ip6X1quGcq9Pg2m76+I5djF78oI4c0Ci
         WB1MtHoT6lfmyFunz+WCmYNZ0OF/4RZNx4OXqMJ8Eei0aYrlcr2PrlC56OZTJxAo3TAY
         ZzaZzzvT+tSFhLBQfAVWkX818n501f/dSqOyVJYOV69pESbYSgmH0DuSk0v+gLcygJ78
         wyrgG6A3+rURHdLaYHhgoZ5lL66wHzbyzJLpA7Wd3uPt6FCM5mZ9a8zkvBm3CzvVRMxU
         h8fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=swa/BfcyEFpl7NOCIb53d06K9cNYUSLtSu5qC6x2uxc=;
        b=O+DFZIUGS+yqwr1hAef0o5N6hR0V8faclEKc9+jxvtyoJZbYqCuwbzz+e69foYTVnt
         aR8pYxfS5ip8S/N+26h4rE+1/yloae8RamPF4c7eMTXZG603rH90w3EOICXNjMRCaZVp
         zz89BBOzZP0kIbqyus/BXpZ5Md9ebrGmXYAKhhhRrdtDijDOWvG4Ph7Jd+40amcskigm
         154ep4ztzhMKcewcuLe+eB6vp0y8G79tuQZAk0hRh5+pBsdirIVF/teQJ5zlC9D0WSOB
         e63aXm/FVxeRgJM2r0VwftZAStyjsiA2ieseuIQAduj41yY7GpHe6FiKMa7vW26istLw
         cR4Q==
X-Gm-Message-State: AO0yUKUSazyHAXKfDsWniBbESVsKshJQyu50+ONxbPFwiwALVGRCSo39
        h9YTeaPiqwRAxJgynHkpnGFuaA==
X-Google-Smtp-Source: AK7set+3Jn7vyALc3oUuYHJej3QgqWYix+kUXfusTC4iFXVY3h1hSLVxPAlQ17rZtK9700w2gKtVyg==
X-Received: by 2002:a05:600c:3093:b0:3dd:37a5:dc90 with SMTP id g19-20020a05600c309300b003dd37a5dc90mr9760192wmn.32.1675941046710;
        Thu, 09 Feb 2023 03:10:46 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id q13-20020adff94d000000b002be099f78c0sm963207wrr.69.2023.02.09.03.10.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Feb 2023 03:10:46 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-samsung-soc@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH 4/7] ARM: dts: exynos: align status led name with bindings on Origen4210
Date:   Thu,  9 Feb 2023 12:10:38 +0100
Message-Id: <167594102110.781687.2495373621074832296.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230207210020.677007-4-krzysztof.kozlowski@linaro.org>
References: <20230207210020.677007-1-krzysztof.kozlowski@linaro.org> <20230207210020.677007-4-krzysztof.kozlowski@linaro.org>
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

On Tue, 7 Feb 2023 22:00:17 +0100, Krzysztof Kozlowski wrote:
> The "status" is a reserved keyword and LED nodes should have generic
> prefix:
> 
>   exynos4210-origen.dtb: leds: status: {'gpios': [[76, 3, 1]],
>     'function': ['heartbeat'], 'linux,default-trigger': ['heartbeat']} is not of type 'array'
> 
> 
> [...]

Applied, thanks!

[4/7] ARM: dts: exynos: align status led name with bindings on Origen4210
      https://git.kernel.org/krzk/linux/c/69276d702c7d8f3c9b23b66bd6540cba8d5bd088

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
