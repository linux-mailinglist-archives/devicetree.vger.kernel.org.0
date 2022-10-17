Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 060F4601896
	for <lists+devicetree@lfdr.de>; Mon, 17 Oct 2022 22:08:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230159AbiJQUIa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Oct 2022 16:08:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230189AbiJQUI1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Oct 2022 16:08:27 -0400
Received: from mail-qk1-x72c.google.com (mail-qk1-x72c.google.com [IPv6:2607:f8b0:4864:20::72c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 657C879A72
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 13:08:25 -0700 (PDT)
Received: by mail-qk1-x72c.google.com with SMTP id a5so7390192qkl.6
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 13:08:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wdC5nxyXzAXv4k4E+7JQ7BAuFg0c1DNv36UsU1hqjTY=;
        b=nbbJeovDD/h3RG2AFYctecGdTMKeGG1ndArDFAX+XEa6CU5gKNMQkjLZxzOfFSew6g
         pfgTe9w2oviO0Hh191eqpLqO2dT+IQKs9r8KxAQktPik9+XeLHIc2V//AGMzSPA8FKsI
         5SE9yWF4fdhy+6NubKG05/EqpDWhVKjKYFV5a6UYacCi94Vy48MQj7A2lk9Vy8ChO4xD
         rrnlWEfC+g0OJeA5KI5WtlSaDfMpaxzoEAYfYoLO+udZloWR1in1fmEgpNhnQFmg/yGU
         dBuaXn0XuH0EtL9U+r4AQcw2Je2Wu8Ds+ZKCk0vrqhyxqB2MPjbbKLeUpv3WElVIA71/
         YYDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wdC5nxyXzAXv4k4E+7JQ7BAuFg0c1DNv36UsU1hqjTY=;
        b=UK5Khh8DjTk6Bf3H5z+fqA1EQ82LPTd9FwGQP/cCbY5Ed+vK7E5abO5AtpYh5FfAn0
         AOoYyDCgdng7dvhALWLKZfTplzlt74R1CsCc/xug7xZcY5dlM9OCt52F6v4KgJnyYx+W
         QpvpQn3X4J4vXphACHq7W37rbETsMkTqTwjuMo8rPctWsF+jx9orccgmtHlAAXlmNWlW
         w33/7I59L0WnhJElrELyUOjBTPNjQr7J+xdkZNatPRNJTmO2fIufDgpURm+n0piP3fBl
         pOQJmwsb/Gs+4/ZGj4IKYdRJ04XcIeRlBLlIMBpVNnVsJYy+oDvrNanmKbOAzUQHOJ7k
         B9/A==
X-Gm-Message-State: ACrzQf3I3ygNMZgH4yi48VW0Ht20wLa5wDpcGeLnpbSAK8StNXf4R+qY
        SqfQjHPXIfBDx+nXAuv5KWU0GA==
X-Google-Smtp-Source: AMsMyM7KmC7znzpKfpH9zAQOjG4In62SkVG2lxnRR8FQhrOuqn3fwNoPsZ9jqRUGhWoM4rd2ZtD6Eg==
X-Received: by 2002:a05:620a:b96:b0:6ed:1daa:8040 with SMTP id k22-20020a05620a0b9600b006ed1daa8040mr8817497qkh.294.1666037304555;
        Mon, 17 Oct 2022 13:08:24 -0700 (PDT)
Received: from localhost.localdomain (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id m13-20020a05620a24cd00b006ce76811a07sm536793qkn.75.2022.10.17.13.08.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Oct 2022 13:08:23 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        linux-gpio@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Rob Herring <robh@kernel.org>
Subject: Re: (subset) [PATCH v2 08/12] dt-bindings: pinctrl: qcom,sc8280xp-lpass-lpi: fix matching pin config
Date:   Mon, 17 Oct 2022 16:07:43 -0400
Message-Id: <166603728600.4991.7753800750625905236.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220927153429.55365-9-krzysztof.kozlowski@linaro.org>
References: <20220927153429.55365-1-krzysztof.kozlowski@linaro.org> <20220927153429.55365-9-krzysztof.kozlowski@linaro.org>
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

On Tue, 27 Sep 2022 17:34:25 +0200, Krzysztof Kozlowski wrote:
> The LPASS pin controller follows generic pin-controller bindings, so
> just like TLMM, should have subnodes with '-state' and '-pins'.
> 
> 

Applied, thanks!

[08/12] dt-bindings: pinctrl: qcom,sc8280xp-lpass-lpi: fix matching pin config
        https://git.kernel.org/krzk/linux-dt/c/b47a6c8b771c62140b619a288acdd5ee46e29272

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
