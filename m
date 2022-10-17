Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A30CC6018C9
	for <lists+devicetree@lfdr.de>; Mon, 17 Oct 2022 22:09:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230199AbiJQUJy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Oct 2022 16:09:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34462 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230455AbiJQUJi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Oct 2022 16:09:38 -0400
Received: from mail-qv1-xf35.google.com (mail-qv1-xf35.google.com [IPv6:2607:f8b0:4864:20::f35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 059AF7B2BD
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 13:09:02 -0700 (PDT)
Received: by mail-qv1-xf35.google.com with SMTP id z18so8077970qvn.6
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 13:09:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=noBOM+zys0V7KP1+ylmbcBKWdeoy+cuC29+lfReZWlc=;
        b=I9QDzmbhm6k/kwyqR+r44LTabVOPDvf8/qXp4WsupAV206X/FgJePy+BNzof1xuYYE
         4taF3U1khL7ih/Nf/VRrflEC3aOWi9asFahenuwOreGLW+8xAzjy4nTqAEdiZKrdMY03
         esgtjp4tQxWE7F1OFGvnE/q3bjT90ru0uXPAV9RLwJI6FWCzCtOq3fG/923l/3kANeYq
         F/ZxdgVctA87Qtt0XpEByM8f+m+CVihZoX5Npqsi8+KkiTYKt6bPI+qzyGXpiP+C1UkA
         22mkG4MuelwG0dxK7rU3IE5R0Apcah7ffiHxfbz2reHqUBTa8DwR7/HUXix/mfRW3noV
         93YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=noBOM+zys0V7KP1+ylmbcBKWdeoy+cuC29+lfReZWlc=;
        b=UTI8Sgu3IIZsGx6kZGMz53LgitDIgYnwX8amS9cGgkWS/EZuIHkppATqV1NqF9qjoY
         WeVZpf5Pz6Z+BEhPEU6kh9UlUUSGzuCNjQbGpGDmFWSPupM53/QGzJl2Tc9SuHSPrQC7
         3em/1AbcOMXB0fgdf0MKehMWVLckPwlZes9JKvpT6/3OoOMY2DwmKdUKNSZszuz7uZPa
         /TcTTOkIlPIL/JhE4445ALKiFgAYwUTC/vdYKDDLktXZRPjBU01rs0cPpSWSnzlh6TFD
         tkzmrJQOE2knznMeWiiph2vw3+JKrhJV9Z9Zf7DGvLk03sQaEVwGT2fb8UqtQVjyTeGV
         LJMA==
X-Gm-Message-State: ACrzQf1R6j/2dOscdDuLsZFOqy9dO8cytklcHAWEL+kj7bVZnEyoJYmd
        OpYOG4FKZuLi8VHWX+ZEhJmK6A==
X-Google-Smtp-Source: AMsMyM7uklssFlPjIER3F54jwN0wHiwqh/FyC7PWrpoFasD9fwaQY7+pkikF6ycN7JtLx/aRQ7FePQ==
X-Received: by 2002:a05:6214:2346:b0:496:ba45:bdb0 with SMTP id hu6-20020a056214234600b00496ba45bdb0mr9927621qvb.47.1666037338183;
        Mon, 17 Oct 2022 13:08:58 -0700 (PDT)
Received: from localhost.localdomain (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id m13-20020a05620a24cd00b006ce76811a07sm536793qkn.75.2022.10.17.13.08.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Oct 2022 13:08:57 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawn.guo@linaro.org>, linux-gpio@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sivaprakash Murugesan <sivaprak@codeaurora.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        krishna Lanka <quic_vamslank@quicinc.com>,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        linux-arm-msm@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
        devicetree@vger.kernel.org, Stephan Gerhold <stephan@gerhold.net>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Rob Herring <robh@kernel.org>
Subject: Re: (subset) [PATCH v5 15/34] dt-bindings: pinctrl: qcom,msm8226: use common TLMM schema
Date:   Mon, 17 Oct 2022 16:07:56 -0400
Message-Id: <166603728601.4991.8612948687940688749.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221016170035.35014-16-krzysztof.kozlowski@linaro.org>
References: <20221016170035.35014-1-krzysztof.kozlowski@linaro.org> <20221016170035.35014-16-krzysztof.kozlowski@linaro.org>
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

On Sun, 16 Oct 2022 13:00:16 -0400, Krzysztof Kozlowski wrote:
> Reference common Qualcomm TLMM pin controller schema, to bring common
> properties, other pinctrl schemas and additional checks, like function
> required only for GPIOs.
> 
> 

Applied, thanks!

[15/34] dt-bindings: pinctrl: qcom,msm8226: use common TLMM schema
        https://git.kernel.org/krzk/linux-dt/c/4799452e1823c6c9ca8b05d47e116871b0c5921f

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
