Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6289D68BB3A
	for <lists+devicetree@lfdr.de>; Mon,  6 Feb 2023 12:20:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229962AbjBFLUe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Feb 2023 06:20:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229984AbjBFLU1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Feb 2023 06:20:27 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2D4B12857
        for <devicetree@vger.kernel.org>; Mon,  6 Feb 2023 03:20:26 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id bh13-20020a05600c3d0d00b003dff6cd8b7eso3258207wmb.5
        for <devicetree@vger.kernel.org>; Mon, 06 Feb 2023 03:20:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IryU7Pqkv/S09fn+YRn3fgxt4JUGrwhFtr0IJ5hD/YQ=;
        b=Uf1765WZa/uo2dEuj9frodHJ4EHBBb5dXqvksUfIAhahJ/rIYtAkOeMU0cL/I31+3H
         RryAjwezPEfvAlWvqDzwx+ZN75gwblDBzaWmhPqEHuIsQhKyJ9B2bS3gLEc/JaEFdcZq
         i89ZN2yfrzYCweQZ9BpbAhlhYsXu4Na9MF4VFeMP6jbaW4iAtKrsccFXuHOcNCHOghiv
         V3hSp21vC/+b/Dx/QV31JUAbohTsXLPM9j3brSIo22UUd8J8UavP7lVMBv1YGaHeAnU9
         rEYp9b0NwGiHjbUVNGwfbONyYcLTdUPVWdReqP7I00iOkcjHNZNvemz78TG9Q7KKHgdq
         55EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IryU7Pqkv/S09fn+YRn3fgxt4JUGrwhFtr0IJ5hD/YQ=;
        b=uXrtFOYkC+jib47YN2D9rB6BRLX5w2MZ3AmQrJpwp+oTTqnQ0Py3WvEMusBet5b/6N
         wW6O4Er7kZsy1rfCPx2YyZUURQm69oABQuMEQuGYBvefOZQ0U1V/b4jqhTpr+N4gCqOu
         SuGborWgeIimDqZmD5SfvlwmTye2l3/hww7XhsMW7kDuIn3JX1Bph+fFO3/uiYWRRK7T
         +DfUBhDgEXCx9nGXvr42ANrJYICqnfuEqM0x1YYMMoNof0EpucVcULbM4JFU7SpX8Fkn
         gLATtGgk1Ai6Dv/JbPQN/0BqdSDqPBNagUPAawORlsSJ2dc9nj/RXi/4EGgXMKqel0a4
         XtsA==
X-Gm-Message-State: AO0yUKW/AwUHiWxx1kVFrHFBK//tT+tk/r0LnGC9cTijkf9yd8aYZO5D
        15yiD/Fu8a6tUO+4EuHD/ALtzg==
X-Google-Smtp-Source: AK7set/K6OGJrWQYoaI+N92qITpqHeYdj5SYuKh/QAIfQyZ41QJg3E0J7hFEvI5a/dhJPkve8M8/Mg==
X-Received: by 2002:a05:600c:601b:b0:3dd:1982:4ce0 with SMTP id az27-20020a05600c601b00b003dd19824ce0mr18140508wmb.16.1675682425336;
        Mon, 06 Feb 2023 03:20:25 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id u2-20020a7bc042000000b003dd8feea827sm15514587wmc.4.2023.02.06.03.20.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Feb 2023 03:20:24 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        linux-kernel@vger.kernel.org, Andy Gross <agross@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: Re: (subset) [PATCH 4/5] dt-bindings: pinctrl: qcom,sc8280xp-lpass-lpi: correct gpio-ranges
Date:   Mon,  6 Feb 2023 12:20:18 +0100
Message-Id: <167568224370.84151.10396222002822981651.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230203164854.390080-4-krzysztof.kozlowski@linaro.org>
References: <20230203164854.390080-1-krzysztof.kozlowski@linaro.org> <20230203164854.390080-4-krzysztof.kozlowski@linaro.org>
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

On Fri, 3 Feb 2023 17:48:53 +0100, Krzysztof Kozlowski wrote:
> The SC8280XP LPASS pin controller has GPIOs 0-18, so correct the number
> of GPIOs in gpio-ranges.
> 
> 

Applied, thanks!

[4/5] dt-bindings: pinctrl: qcom,sc8280xp-lpass-lpi: correct gpio-ranges
      https://git.kernel.org/krzk/linux-dt/c/315dffb843f75cec4458714f4d151d5775e797de

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
