Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 48D577360E6
	for <lists+devicetree@lfdr.de>; Tue, 20 Jun 2023 02:57:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229958AbjFTA5Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jun 2023 20:57:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229882AbjFTA5V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jun 2023 20:57:21 -0400
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6558310C1
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 17:57:20 -0700 (PDT)
Received: by mail-pg1-x530.google.com with SMTP id 41be03b00d2f7-5440e98616cso3421505a12.0
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 17:57:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20221208.gappssmtp.com; s=20221208; t=1687222640; x=1689814640;
        h=to:from:content-transfer-encoding:mime-version:date:message-id
         :subject:references:in-reply-to:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dIRXSKBh0/OSI5A0JE5eFjZNhWDyQODzPnGpuQ5MeOM=;
        b=udHldBHwsqVU04yYFmJnOy5Sr8WpUaHHxyvibnEfIoGkwrth2nCx1quS6nvsSzLYWi
         pu7E3W7NInaNyPGWItwEi9kbUQKQ5i1j+mNIpqIjtjiD9tI7cJrDxEbA8ZZvmDVKqhaO
         /lgzfBsOJJE3Ue4MqYR1IHZTzya5f8bFXxg7OqwMB3hSBRox6yWz3mAEtuqkasl78A0m
         j62O4jEkNvH1+L1mgFYKgFrTYBKas0oZcEl/bDa5xGKz9tWMffhzvSBOPH0Ke688c8yw
         o6N1WTFYo/USpj6idbURkIQC8T4EKG8mvZU5sBmlnzbN8Lr+ottoRJCakQwGQlYgXps+
         XKRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687222640; x=1689814640;
        h=to:from:content-transfer-encoding:mime-version:date:message-id
         :subject:references:in-reply-to:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dIRXSKBh0/OSI5A0JE5eFjZNhWDyQODzPnGpuQ5MeOM=;
        b=YoxKx6fhtclfuThsZRP+FDr58T9CyqxGAPsvG5k2ABrESOYLSG6nGXxJm1c6uXxrF+
         jVePKdZ4FLPyMKKi/IIULU9kfoKz1TbensFp+0HarP90NtaH/LHR1K6jHdqqVXoveLKA
         eCLj63FeHPKbKehao2DUXQ2iaBMEUNEuGbgxF0MpoysLptiISDK6HunkR7XNp9Bdza/J
         3fiWhuurTxGWlzTdtsAcWjCBwE9+kzL/bMvProyqnnbfoOebICa4r7yDSPznSET2IRXS
         GdKlxpaKRZ5j2YGXGhQSXpdFFKaGp3eFaqymXYtrKjiu1d4wBSgliZRLDQUF8h+891d8
         ntHQ==
X-Gm-Message-State: AC+VfDyPrKe9XD24IwYmHhxudfGUwP4EQE6//DzlavTTijJYTuTTcY7Q
        e8tDTF9si7tjHGT9Y+kDAeQpHA==
X-Google-Smtp-Source: ACHHUZ5MLLpLABeiC3rkvzktEprx59u8JOufah3AUPT50sKnH0qy2CQ1ISgkzmByz2SP3EPYDgPNJA==
X-Received: by 2002:a17:903:1245:b0:1b0:56cf:b89d with SMTP id u5-20020a170903124500b001b056cfb89dmr22649807plh.12.1687222639855;
        Mon, 19 Jun 2023 17:57:19 -0700 (PDT)
Received: from localhost ([135.180.227.0])
        by smtp.gmail.com with ESMTPSA id h13-20020a17090a3d0d00b00246cc751c6bsm6533411pjc.46.2023.06.19.17.57.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jun 2023 17:57:19 -0700 (PDT)
In-Reply-To: <20230609140706.64623-1-krzysztof.kozlowski@linaro.org>
References: <20230609140706.64623-1-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] dt-bindings: riscv: cpus: drop unneeded quotes
Message-Id: <168721242548.30028.8176504545830229322.b4-ty@rivosinc.com>
Date:   Mon, 19 Jun 2023 15:07:05 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-901c5
From:   Palmer Dabbelt <palmer@rivosinc.com>
To:     Conor Dooley <conor@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Fri, 09 Jun 2023 16:07:06 +0200, Krzysztof Kozlowski wrote:
> Cleanup bindings dropping unneeded quotes. Once all these are fixed,
> checking for this can be enabled in yamllint.
> 
> 

Applied, thanks!

[1/1] dt-bindings: riscv: cpus: drop unneeded quotes
      https://git.kernel.org/palmer/c/f20233852ae2

Best regards,
-- 
Palmer Dabbelt <palmer@rivosinc.com>

