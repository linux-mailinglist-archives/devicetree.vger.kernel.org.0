Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2C84C67AFD0
	for <lists+devicetree@lfdr.de>; Wed, 25 Jan 2023 11:39:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235615AbjAYKj1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Jan 2023 05:39:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235501AbjAYKj1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Jan 2023 05:39:27 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47CB325E14
        for <devicetree@vger.kernel.org>; Wed, 25 Jan 2023 02:39:26 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id j17so13423053wms.0
        for <devicetree@vger.kernel.org>; Wed, 25 Jan 2023 02:39:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2k3GRfdwQwoSZfn0KhpRa1fW62kWoYSQlgbY74Cf7bU=;
        b=FOVqUZqrtN8E+Q5DRtjfkrzBkNCleZcZFHW0hRhzW9+TtPoSwfTof6f2Ag8PW7Boh7
         xra7XAhHJzvQC3nDpcaLC6PC9wG4BI6qESpOot/T6BmqfaGm8HFg61ewtRxaFp5QerFE
         H4ucQGGjRmqNrFoWvbR0G36Gx6Aqe5XcysOVuncB+PA/Gl9cUpmexn3mYDgewh7CYeNZ
         u85Q+dDjhEM04R3p5i7T4Y+6i0wifZB+Ug2RFMD6zp7s7No5deUWb1yyVgOaWPh0Mh1e
         tj4XtqECGq0t8ygmcypULyvTikJcB0IVBB225tWhQpuKWFavraNTKhdY3dYM8ZYLmMfb
         TK8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2k3GRfdwQwoSZfn0KhpRa1fW62kWoYSQlgbY74Cf7bU=;
        b=lF+jPDljgU8n4SqERYM2pfPCiK9F5IWCBkuPL2eDwOjj8hoo6FlbZ4a1lMEi1TDpm0
         1O+Hgg7CTqa/8zvXhBfLod0BMXKY2elARZjWXoNf0pSteyvwKtFjrKkD2eGgTg0njiMI
         POHo6cGuRGq+FISfdau8w6L/o1tZ9bQ2i6NAwm+5GTJVAke4JregqVH0HIf3BdduUkkA
         APLp3ZbfwvM2l8QDSdIBheoBYdgxgRkIXoepA7G4wI3nFA+IRTaw4nV469ZqVH1LcA8l
         myAz9KGXzki2vZdxY9AfY89yf9JRanHOoZijXT+GI9tqF8Kf6zHxYXKrh+z9P+xuxI97
         /hUw==
X-Gm-Message-State: AFqh2krYXZAcSEXjgqyU/B1Rj2LmtEthBb/UdwzFl07PxxQnPvJU+3SJ
        NdnrYPkQfFi8AcU6Y0U+RZ4F2sng/IJNXE0B
X-Google-Smtp-Source: AMrXdXvi91mHEUaswxqklkPAxXst6bIFSak+wTtRWlR+XHNG3kZR3PTkuDFDIGYWSOnl2vaaqcivuQ==
X-Received: by 2002:a05:600c:1c01:b0:3da:fc07:5e80 with SMTP id j1-20020a05600c1c0100b003dafc075e80mr33641244wms.12.1674643164667;
        Wed, 25 Jan 2023 02:39:24 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id e26-20020a05600c4b9a00b003d9780466b0sm1386804wmp.31.2023.01.25.02.39.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jan 2023 02:39:24 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Romain Perier <romain.perier@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Daniel Palmer <daniel@thingy.jp>, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: mstar: align UART node name with bindings
Date:   Wed, 25 Jan 2023 11:39:20 +0100
Message-Id: <167464315348.338477.1343014919200110781.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230123151523.369225-1-krzysztof.kozlowski@linaro.org>
References: <20230123151523.369225-1-krzysztof.kozlowski@linaro.org>
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

On Mon, 23 Jan 2023 16:15:23 +0100, Krzysztof Kozlowski wrote:
> Bindings expect UART/serial node names to be "serial".
> 
> 

Applied, thanks!

[1/1] ARM: dts: mstar: align UART node name with bindings
      https://git.kernel.org/krzk/linux-dt/c/5e4505d22f2c3c739bdd063e5348bca3ff34dae2

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
