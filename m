Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6011166B089
	for <lists+devicetree@lfdr.de>; Sun, 15 Jan 2023 12:18:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230411AbjAOLSg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 15 Jan 2023 06:18:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60684 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230307AbjAOLSf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 15 Jan 2023 06:18:35 -0500
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54256A24A
        for <devicetree@vger.kernel.org>; Sun, 15 Jan 2023 03:18:34 -0800 (PST)
Received: by mail-ej1-x635.google.com with SMTP id ud5so62028250ejc.4
        for <devicetree@vger.kernel.org>; Sun, 15 Jan 2023 03:18:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LLBqT3f1ZSkAqUu3phBo/I68uMxIQaNbiYzehYTTQxo=;
        b=bfvib7p3fn0MZ0xYWEwm2VcowbiKFvxpTVextVEvEeIi9WcI4ecAqof9mYHttjTV/n
         zAGGTlW5f1KHy4mqOLwHFGzYVDaqk4uheagHl6kKVlmQpsds9wQa8i9WWAZV4lVBIVxu
         5WuCqWsZNWUEdO0IY5vrLdF6w0U/+lxB4p3kD0Ez4a5OuKkNJ77F5PM8OALCp0brsOvu
         qUYfEYnWtpGL/bCpc8kVYs+PTKJGmvCQ3XEbyrK1u2U7JkanqmruVuPWlXp1ZsdUx2QN
         VdNFBV7E8KbaFYwlSMepDps1eIfDXcZt0bign9jsPHOb3WrtY0+SJLowqdOCgONj6LC5
         gqtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LLBqT3f1ZSkAqUu3phBo/I68uMxIQaNbiYzehYTTQxo=;
        b=Nr1mchdAMi6DouwafdA10erkGzpkB44/7SHKbICG39XmZif7WU+pyncGYnffpTdKk9
         9YnGaaMHYni7d1/+5B+duWaFj6aGnzd+XNkKqhWkAZyTzcvI/EaPA6Fu32/xkLglmlFE
         voL6719buE9bXKCsCVV4E5pEJYwNWTnYhQvM/Fm1nFgBp2SymvYT11G1wW/1bT0FD2+h
         3v++acbf4SEdZdbXUv7MXaUoKOTI+3fLQ1ZxKSaco1sq+t+6eR7K0CL+bD+mkwA8lJxO
         56JDwt5duCEwfN3e3f3vylXyBCiCe3ZKo9p2PFha6fXetK6ax86H7ng5M1sJQnmWLxgV
         Zgsw==
X-Gm-Message-State: AFqh2krVDgFYRMwOaIqpRo85nYCsjraezoUpq735uq2dQlD8YShpfznB
        VHu0xoEKSlYFhaD9q6LXQ9lUvQ==
X-Google-Smtp-Source: AMrXdXvb53QEjGo/2CwfjTl0laBdQmNsq0MrxkK+N6HmJOYXsA9+LzsLsIx2Xvcf2Aw1CLFXF0wPjQ==
X-Received: by 2002:a17:907:8c0c:b0:7c0:ad62:a25f with SMTP id ta12-20020a1709078c0c00b007c0ad62a25fmr78162140ejc.51.1673781512922;
        Sun, 15 Jan 2023 03:18:32 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id en6-20020a056402528600b00499b3d09bd2sm8056347edb.91.2023.01.15.03.18.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Jan 2023 03:18:32 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Aswani Reddy <aswani.reddy@samsung.com>,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        Padmanabhan Rajanbabu <p.rajanbabu@samsung.com>,
        Sriranjani P <sriranjani.p@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] MAINTAINERS: arm64: tesla: correct pattern for directory
Date:   Sun, 15 Jan 2023 12:18:29 +0100
Message-Id: <167378150437.5643.4332033235102103834.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230113104050.30856-1-krzysztof.kozlowski@linaro.org>
References: <20230113104050.30856-1-krzysztof.kozlowski@linaro.org>
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

On Fri, 13 Jan 2023 11:40:50 +0100, Krzysztof Kozlowski wrote:
> The path is actually not a pattern but a directory, so correct it to be
> effective.
> 
> 

Applied, thanks!

[1/1] MAINTAINERS: arm64: tesla: correct pattern for directory
      https://git.kernel.org/krzk/linux/c/5e487164afbcd917225fb701e8956f388f43b601

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
