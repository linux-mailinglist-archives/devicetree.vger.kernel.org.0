Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B3A060301A
	for <lists+devicetree@lfdr.de>; Tue, 18 Oct 2022 17:50:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231234AbiJRPuI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Oct 2022 11:50:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231294AbiJRPts (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Oct 2022 11:49:48 -0400
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com [IPv6:2607:f8b0:4864:20::734])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8759BDF43
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 08:49:31 -0700 (PDT)
Received: by mail-qk1-x734.google.com with SMTP id s17so7713892qkj.12
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 08:49:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sOF40LnUY4scPwmAlI+IgQw34TPonF5qD+3Aj1xGjXU=;
        b=Jpfh/Nb8dkbG/cB/2xztHveqynNOHD3Lg1ZnQPE/jvrsE6adAYEj8d1Qyhiy7JIH9i
         /dMZOL25p55FhLU8jTlRouZ6z+0fjy3SUS+rgMRZKhO73Yc3bSXAz/H/RXut2UcWquEI
         J8AGFXjrJw5Ir+HWV0+nVNQGt01OlWJXRu/eEoTaeUq6O7EcD4H3kih7tnyfoX78sgFk
         xxt9sqYKUFQYlNLhckjni5fQvewAjeV/emJFhAmNpq7FQ83VF9m8Mtrsoav2d85jqHSS
         pwRY3hTK+jbN6TJ01b0h16ks3Y8cWPIIX/3Od4GNatm7Nx/G1U1szXmJftH8LYs1YX75
         PqLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sOF40LnUY4scPwmAlI+IgQw34TPonF5qD+3Aj1xGjXU=;
        b=1B5Xd/1DkUb+4BsefRjjKiraGwjFzWvI2vSXvfMK3mA7LSRDUQPV4bz6VaStC8/EQ+
         REMeoealhOF8PIxJmtu+UFuuZFE1hfMBsAB4sASUZO15Eouzduqoef9CmDZw+BM77rPg
         Ho3jRJEruR2j30GcwCubcl1ET218061qZsLAhw8yNT8/2rjEF0Fg5vnXe+MnQrXrQmnY
         eI71/HjWN15yLf67tkiFwUuDStJ1qtGfjJ8Jr3V+p+6rbzkSVXNB0ACZgvODACJEMWph
         w6TlFyBMukET5oUxTM+Wi0TByS8ae85fd8JFxYdMvE9s/ABwwVBwZAf0H+vrfu9j/SkQ
         MMjg==
X-Gm-Message-State: ACrzQf1e0d9PatgEy+qMzxrBRothbQdHpZlM0TJtSLhv+w2piFqcWyX8
        Cd7N96sNpubU3NuL7qexByyw3A==
X-Google-Smtp-Source: AMsMyM4iKrehOoUiORUFDHlTZsMU8TXPbdWf7ovBYPPelxb0kh6d0lBvjfPeGMc1N2sD+k6DoXS/qQ==
X-Received: by 2002:a05:620a:85c:b0:6ea:c16d:2149 with SMTP id u28-20020a05620a085c00b006eac16d2149mr2311149qku.288.1666108169802;
        Tue, 18 Oct 2022 08:49:29 -0700 (PDT)
Received: from krzk-bin.MSRM (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id c25-20020ac86619000000b0039543f89109sm2029202qtp.96.2022.10.18.08.49.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Oct 2022 08:49:29 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     Rob Herring <robh@kernel.org>
Subject: Re: (subset) [PATCH v3 15/17] dt-bindings: pinctrl: qcom,sc7280: correct number of GPIOs
Date:   Tue, 18 Oct 2022 11:49:07 -0400
Message-Id: <166610814671.37912.14143402454760029222.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221016172212.49105-16-krzysztof.kozlowski@linaro.org>
References: <20221016172212.49105-1-krzysztof.kozlowski@linaro.org> <20221016172212.49105-16-krzysztof.kozlowski@linaro.org>
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

On Sun, 16 Oct 2022 13:22:10 -0400, Krzysztof Kozlowski wrote:
> SC7280 has 175 GPIOs (gpio0-174), so correct size of gpio-line-names and
> narrow the pattern for matching pin names.
> 
> 

Applied, thanks!

[15/17] dt-bindings: pinctrl: qcom,sc7280: correct number of GPIOs
        https://git.kernel.org/krzk/linux-dt/c/06311aa3ad1fd745d6248fc665f4c28880fedff1

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
