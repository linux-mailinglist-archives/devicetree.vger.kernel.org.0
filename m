Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A3D9B602D29
	for <lists+devicetree@lfdr.de>; Tue, 18 Oct 2022 15:39:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229934AbiJRNj4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Oct 2022 09:39:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229975AbiJRNjv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Oct 2022 09:39:51 -0400
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com [IPv6:2607:f8b0:4864:20::730])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93C991EC56
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 06:39:49 -0700 (PDT)
Received: by mail-qk1-x730.google.com with SMTP id z30so8579100qkz.13
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 06:39:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/GaRn096EJkVZZlzc+nVh5YRf5MDAhYRvE4OmZmnDu4=;
        b=EkZruu4rs61lg7zj4v5FZ1R0zXYR0uE99SAj0j59YpOF+DJnIASEoPqnf5Yd6OLWY6
         47gGheGUjp9pPEtdXY42ElrGLfqOhPxb9tRvkw7qc5n3HqyouhWOkcCm5decCz3/BF4k
         b5MQsDdoccFi0GpEZnd8x372f/fHtb/CcE66/d3zZ+3FCRSMWOWQmnhr99exOThmKYwM
         IeVARrdEgtqZVnqkk2B2l4Ag4q+/MruisnU0zCqKnnrMC/O7L2pM2X+6yPPnNuQovvu6
         DJuI8fAeCblhXKzz1GhRP2E99GEjJzt7kGYkRpOhjR+3aIZ1+Omu1dOhxx78ZjhUVeI8
         Izdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/GaRn096EJkVZZlzc+nVh5YRf5MDAhYRvE4OmZmnDu4=;
        b=JHHMQp+fnToCYgRh4VoucjtGFZtmUdeOJPPVXCJ4gYyo2du45U4FA6XQd4UTXbv2sl
         BlXWHhiNjo9DdaTeyikxfq4yypt8v5iUVLVfHbJgYtDzek5SUEHXMDAKUiFrmTykzJTr
         DmFp7KI2xb5ZU74XdOzLvm/jI3Z/yiyWUWnqPnbBYruGh84hzQGuxmmCqkNxppS0UxVw
         fLVy49Z6tNPQr4DkOCrYeUfg+8ZZEbO2yJ/WzfMTMRfRr5gxHh415OKa/l9kOLo70+is
         DCTNkbZ1V06NuYHWRZNzy7AQqiZDUUw0PRlKhQfyNVn0BNFfqNtABk85P2MssxXeNz4k
         mWVg==
X-Gm-Message-State: ACrzQf0u6II04bxLRTQwoZotsrHPVyWA2jupWal1p3H9sVGlpIEJ6ccg
        +7Zho6Pbu3/GZN6loxCl+QFVMA==
X-Google-Smtp-Source: AMsMyM5YKTiiYTgjU4PSq7epPdghQRg90zvIlzhA0QCwaCfBBNZM4GK4cwt3eJXzBRaLNQHo+LfMPA==
X-Received: by 2002:a37:e205:0:b0:6ee:834:1a1b with SMTP id g5-20020a37e205000000b006ee08341a1bmr1808177qki.342.1666100388736;
        Tue, 18 Oct 2022 06:39:48 -0700 (PDT)
Received: from krzk-bin.MSRM (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id t24-20020a37ea18000000b006c73c3d288esm2368713qkj.131.2022.10.18.06.39.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Oct 2022 06:39:47 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Gregory Clement <gregory.clement@bootlin.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org,
        Chris Packham <chris.packham@alliedtelesis.co.nz>,
        Rob Herring <robh+dt@kernel.org>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Andrew Lunn <andrew@lunn.ch>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
Subject: Re: [PATCH] MAINTAINERS: ARM: marvell: include bindings
Date:   Tue, 18 Oct 2022 09:39:44 -0400
Message-Id: <166610038083.12522.9467894060649948229.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220809055729.19242-1-krzysztof.kozlowski@linaro.org>
References: <20220809055729.19242-1-krzysztof.kozlowski@linaro.org>
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

On Tue, 9 Aug 2022 08:57:29 +0300, Krzysztof Kozlowski wrote:
> Include top-level Marvell bindings in Marvell maintainer entries.
> 
> 

Applied, thanks!

[1/1] MAINTAINERS: ARM: marvell: include bindings
      https://git.kernel.org/krzk/linux-dt/c/b65c1735c73019549255e3a59ec80e9b9201c6e5

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
