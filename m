Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C0F4E697EEE
	for <lists+devicetree@lfdr.de>; Wed, 15 Feb 2023 15:57:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229982AbjBOO5s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Feb 2023 09:57:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229943AbjBOO5q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Feb 2023 09:57:46 -0500
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 950163B0C7
        for <devicetree@vger.kernel.org>; Wed, 15 Feb 2023 06:57:19 -0800 (PST)
Received: by mail-pj1-x1029.google.com with SMTP id n20-20020a17090aab9400b00229ca6a4636so2495327pjq.0
        for <devicetree@vger.kernel.org>; Wed, 15 Feb 2023 06:57:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20210112.gappssmtp.com; s=20210112;
        h=to:from:cc:content-transfer-encoding:mime-version:date:message-id
         :subject:references:in-reply-to:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WXiyNpETkYC9z6V5qLWPf0k+7IPR5cZpgLQTFb6RXec=;
        b=NxZSpyUi5aOKG9wEEN6Nqjpnc+7z0Wt/NwdEqoJ1ebur20lHv/oM7Ija1av6J+Kncl
         nOm6T/oa2vCuvOGkM8tfJi3YDwcNnr1gUq/F+Uc+kNbhRuxvLcbvaApeum8euQN5+QuD
         kIp33+3YRSVtlkZc7HllsgFABTiFlh9E6gVNhKUPQVsDNNtCHHu/+ngs1Iy2Q5lyd5pH
         DRNrtW9+envN/knBC5rHyRxzQtWvE6lYEmg5umG07qFxHLh2dxPYNsqO7qXQPxdkAXkk
         kO735u+cYddx2jgMHJxJIGXkLoXLncSk+fH6EGqhIxvAI9NoJohjP93Wy0WeSuWCjztf
         D8Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:from:cc:content-transfer-encoding:mime-version:date:message-id
         :subject:references:in-reply-to:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WXiyNpETkYC9z6V5qLWPf0k+7IPR5cZpgLQTFb6RXec=;
        b=0r07A2a35QzLbfJp+Jm1TuqxFaqJOn06I930HDiUrNxcgjz3Ao1qJv/klLPuLUXgX0
         UcMfGMM6Jfbd7S/Mck9+JI1KjjMoJmDHHO3TAmsgFVpeq12KhAKLn7EOFnKwkP2wOGOI
         E6Ynq2Aq0AyK8L/29bZ6yJLh6ZOubGjzrbOvYtD2+Elecx3jcy1swVdExZvoVDQlcieU
         rvP+Zk1NQV2moSl5FDKZze/hTfbLF1Rd5iaZl3hA3ihfy+V5VBwmT6tghUFZ7K9YAfOG
         XFRIxR+n6O14OqWGfRnu87x1xUV5+njRqPdN7SFKGX9smwHINeY/mLFk97gOoLYrqYTM
         qInw==
X-Gm-Message-State: AO0yUKWrB+q2n0xWY45xKpMwMraI67ycLc58bYBlFZykV50HzFO1QFPX
        dUptVWblC0wJwdZlxFTG0cP80Q==
X-Google-Smtp-Source: AK7set/7P/HtTKptrN8fEWEQBq3y3lZIWLRAPkYVv5DtZxdSAAog0SbdOHfHXa5okdJFu7VPTr4zOA==
X-Received: by 2002:a17:902:f54f:b0:199:26b1:17b3 with SMTP id h15-20020a170902f54f00b0019926b117b3mr2804547plf.28.1676473038684;
        Wed, 15 Feb 2023 06:57:18 -0800 (PST)
Received: from localhost ([135.180.226.51])
        by smtp.gmail.com with ESMTPSA id iw6-20020a170903044600b0019ab6beea1esm3585233plb.87.2023.02.15.06.57.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Feb 2023 06:57:17 -0800 (PST)
In-Reply-To: <20230104180513.1379453-1-conor@kernel.org>
References: <20230104180513.1379453-1-conor@kernel.org>
Subject: Re: [PATCH v1 0/2] dt-bindings: Add a cpu-capacity property for RISC-V
Message-Id: <167647301916.19800.9191672449999836503.b4-ty@rivosinc.com>
Date:   Wed, 15 Feb 2023 06:56:59 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.11.0-dev-e660e
Cc:     Yanteng Si <siyanteng@loongson.cn>, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-doc@vger.kernel.org,
        Alex Shi <alexs@kernel.org>,
        Ley Foon Tan <leyfoon.tan@starfivetech.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Conor Dooley <conor.dooley@microchip.com>,
        Jonathan Corbet <corbet@lwn.net>, linux-kernel@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>
From:   Palmer Dabbelt <palmer@rivosinc.com>
To:     Conor Dooley <conor@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 4 Jan 2023 18:05:12 +0000, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> Hey,
> 
> Ever since RISC-V starting using generic arch topology code, the code
> paths for cpu-capacity have been there but there's no binding defined to
> actually convey the information. Defining the same property as used on
> arm seems to be the only logical thing to do, so do it.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: move cpu-capacity to a shared loation
      https://git.kernel.org/palmer/c/7d2078310cbf
[2/2] dt-bindings: riscv: add a capacity-dmips-mhz cpu property
      https://git.kernel.org/palmer/c/991994509ee9

Best regards,
-- 
Palmer Dabbelt <palmer@rivosinc.com>
