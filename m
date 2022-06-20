Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0E8D2551710
	for <lists+devicetree@lfdr.de>; Mon, 20 Jun 2022 13:15:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241630AbiFTLPZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Jun 2022 07:15:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241837AbiFTLO6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Jun 2022 07:14:58 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F39BD15FE1
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 04:14:39 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id eq6so7294881edb.6
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 04:14:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=iWwP3zKNoSqn/looa8tOJbszWzl+PDltFYRXBTBOfTg=;
        b=end+xJ9biihBZnDNcX/1VK/y/FN7ogO3n+AOf6D9B9nTJQkxSu8OYn8YXO54X8t7PB
         itM4i7iWxLeehpof5kgMwHc8qk3u6+E50XF95jSdPJCMdJJpl5wm0WjdXcHxrMB5SfkD
         swuODviPhK9Wes16lxER2oI7AoU79EsArQQkfBce9AyZFadEXAheI26nV6WNRxzSCB8s
         E6v3t/QwM6+QRitsrnxRr2akDsMJV91c+Q8O5I3+Y5xq6luUfeAUpfWDBTBarAN89Iy/
         kbl5q73LX3KvFVy/zI6o0rrJn8aYvxHv5ftIESak0JD48R+uZBGf3dmzSo25Pf2wmpPf
         ZNrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=iWwP3zKNoSqn/looa8tOJbszWzl+PDltFYRXBTBOfTg=;
        b=PGwOuPD2JY15FOUPslO+YzY3K1AzJ+7WKxlY7T87B2ronUH4dNzxAC0yzgncC4oKHl
         6YB3efMHel2igkwUXTJ99cWv0plZe5TmHwL+uAKVyyNP1pjtuv2/C78PxZ+wz5z4ehfl
         CA4FGpauA8qtZ/863clYGl0twIubiGbaD+AOTAkc4AYTdafMWLh6C8e/i83+LLG7Rpiw
         iQLl657hiszdgVl101KROQOVUxec1DF+eZiNoJYnUHe/QzrJHPUxxWOu/spbfAYYJRHk
         HpYjhJf5uiHzg27zoM6hl3OSabgdgpULxgZnkmCfNBRmMed2zd3/yxTi1l4z/p7ixi+q
         Dosw==
X-Gm-Message-State: AJIora/uio6kFc/ZryS2nCzfW1Voq1Px9uyrNwcmSdQyWQHrs1NvizIX
        8JbL4xK9OiIwQWp0BZOcUqQuSQ==
X-Google-Smtp-Source: AGRyM1sPhRF6oSOa0bOLQMm48PjJI9vwGrtl85GlrcbcCeuZnaouaI26t4q4ISjcpRl8IczIAN9dIg==
X-Received: by 2002:a05:6402:510b:b0:42d:d18d:2080 with SMTP id m11-20020a056402510b00b0042dd18d2080mr28545619edd.263.1655723678550;
        Mon, 20 Jun 2022 04:14:38 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id c26-20020a170906171a00b006fed9a0eb17sm5699969eje.187.2022.06.20.04.14.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jun 2022 04:14:37 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     arm@kernel.org, Arnd Bergmann <arnd@arndb.de>,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Khuong Dinh <khuong@os.amperecomputing.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Olof Johansson <olof@lixom.net>,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        soc@kernel.org
Subject: Re: (subset) [PATCH v3 05/40] arm64: dts: apm: correct gpio-keys properties
Date:   Mon, 20 Jun 2022 13:14:30 +0200
Message-Id: <165572367262.35195.10191660870044749180.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220616005333.18491-5-krzysztof.kozlowski@linaro.org>
References: <20220616005224.18391-1-krzysztof.kozlowski@linaro.org> <20220616005333.18491-5-krzysztof.kozlowski@linaro.org>
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

On Wed, 15 Jun 2022 17:52:58 -0700, Krzysztof Kozlowski wrote:
> gpio-keys children do not use unit addresses.
> 
> 

Applied, thanks!

[05/40] arm64: dts: apm: correct gpio-keys properties
        https://git.kernel.org/krzk/linux/c/2453119fe6eed92ae88baac14ed28425a2b9f95e

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
