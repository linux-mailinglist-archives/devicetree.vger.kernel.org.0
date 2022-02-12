Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B3814B3682
	for <lists+devicetree@lfdr.de>; Sat, 12 Feb 2022 17:37:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237458AbiBLQhV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 12 Feb 2022 11:37:21 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:46036 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237425AbiBLQhS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 12 Feb 2022 11:37:18 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B846240AA
        for <devicetree@vger.kernel.org>; Sat, 12 Feb 2022 08:37:14 -0800 (PST)
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com [209.85.218.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 4D0C4402E0
        for <devicetree@vger.kernel.org>; Sat, 12 Feb 2022 16:37:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644683833;
        bh=7ys9/qjzPiU3SC/qBsUq9U2CJFdyL7K5ET3RMyCWmA0=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=ROUv8aLzhoTOJEDA7rN4kRKkSVduuiAXqIxLE85zeM3FC+0CgPfXm4XJOA5timhnK
         3urM2MjgwFYRGHa05vccgYpMhg+EcPlDRuefwzCPVhh9V/3i9eTeqUY/anHy5H7DJL
         qOnGZQ7VSC58cxciYrSdteO9vFsF7HDFdAGJ6AHVTk3b/XX0wm9KokF4GZW7n4TZDs
         fTQkRb52OHYzZXeGfRak8Kv5DAGZTqxdJbI3CLZ6RBlPAqmszn6jitlzVoIuAvR6Yg
         f0DkTcR4pIsLZt5JdxeT9jjgTIyLeiUL0gd9hBzQ+G2MezG59/PGbz/k9Jv0O5iPIR
         2PPkMGi5yeuTQ==
Received: by mail-ej1-f71.google.com with SMTP id vj1-20020a170907130100b006ccc4f41d03so4857161ejb.3
        for <devicetree@vger.kernel.org>; Sat, 12 Feb 2022 08:37:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7ys9/qjzPiU3SC/qBsUq9U2CJFdyL7K5ET3RMyCWmA0=;
        b=cS0khfZtfcQmDvj0rCto2Co372q7vgKelUBvKtNbZIcwmKKmNPacnv8R2humc0c0c2
         X0uG1g4AJE20O8RWZkI/4aRKFD5j++nom0MvbFE5n4+Bnn9BbKrMuk4aXHSfHYbopSwA
         j/O9g0jfLEi2bjMgM2oojht1GYJOC1HAp9zbXVymoOqaOpBD/HaNVJMBhYyMw3KusGVf
         ShiT9q8mBC25GOP1Md0AYbGFWh3v1OhtveGuOX5fCfLpgWVKTQPIEUScG3OVocNxnGBa
         FZV1L7eo2aLj25ymLXkQ46T4eFGHaz/o6RA+fCBOY2gSW8F5EAXefwiKoDZpQ8wW6AM5
         VgYg==
X-Gm-Message-State: AOAM532Y+Pu3nQjqxcPR5FFmf3ApwUnULYKIR2c3GRU1N78XSMospVu5
        6GYBo0he3Co3tZotekW1FHOMzsHIlLf9WXMqHehji0w/F9ks7idltbhJfGiTEJeFcrFKscoNxJ4
        SqG9QqiZY8k8RfwDz4y957rw53bntEOR91MzYQm0=
X-Received: by 2002:a05:6402:280b:: with SMTP id h11mr7446512ede.402.1644683833017;
        Sat, 12 Feb 2022 08:37:13 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwUIS5XZJwcH/oXPkDCwlaYXgS9xWXGSa3hZYgN6Ichr2oZbBytnhatpKpWIWOfF2w+YAttqg==
X-Received: by 2002:a05:6402:280b:: with SMTP id h11mr7446498ede.402.1644683832858;
        Sat, 12 Feb 2022 08:37:12 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id x10sm2494443edd.20.2022.02.12.08.37.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Feb 2022 08:37:11 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     linux-arm-kernel@lists.infradead.org,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-samsung-soc@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Sam Protsenko <semen.protsenko@linaro.org>
Subject: Re: [PATCH v2] dt-bindings: soc: samsung: usi: refer to dtschema for children
Date:   Sat, 12 Feb 2022 17:37:05 +0100
Message-Id: <164468382250.54495.10506365677169420285.b4-ty@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220211164716.120880-1-krzysztof.kozlowski@canonical.com>
References: <20220211164716.120880-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 11 Feb 2022 17:47:16 +0100, Krzysztof Kozlowski wrote:
> Explicitly reference the dtschema for USI children implementing specific
> serial protocol (I2C, SPI, UART).  The SPI schema is not yet accepted,
> so it will be provided later.
> 
> 

Applied, thanks!

[1/1] dt-bindings: soc: samsung: usi: refer to dtschema for children
      commit: e465ea5cc05d1d0b45c315fca0254bd2ee04b661

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
