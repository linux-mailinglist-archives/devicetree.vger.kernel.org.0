Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A3164751684
	for <lists+devicetree@lfdr.de>; Thu, 13 Jul 2023 04:55:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232548AbjGMCzq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jul 2023 22:55:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229822AbjGMCzp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jul 2023 22:55:45 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8D7B1BDA
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 19:55:43 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-992af8b3b1bso39821266b.1
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 19:55:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689216942; x=1691808942;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kLlU58c++ci0IwqSkjxaHTSUcPb1zdpAeIzC2kjdIKM=;
        b=BUNTBaE6LZt5r73fzC3XCFuLsZgsOT1IAJcT9VjwDbN8snUUYP1sEUvu6Qt76HZ4Zg
         OwxWqOeNsG6U2s2NSrdUBLL8xhsSIi34mEjlpNIxzyeQZp/ddXhG7KnOJkKKEs34qJBA
         tcFMCzGn4MCLJNv9swwhnkLRPzhlwJ1jU7HovZeRp8hN9GN+b2lsgQ42plEUsrAp7XCx
         eLTSJBaIqw7Vf8bhJDh3X0ZWQWuetlnIm7cMIY5cCM9P894BH9tVxNemcVkjiv2Wyy54
         +Io3GWchFGtwM+KBX222G93mTED7UKSdo1E2LyrXVNCaRCpbGDK25FLPCCD/4XXe4Md/
         6KmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689216942; x=1691808942;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kLlU58c++ci0IwqSkjxaHTSUcPb1zdpAeIzC2kjdIKM=;
        b=i1FE/ArtO651Nz6sgD6v3+Q4bTBsEd2g5ICYXQ30dvZ2B6l6tXNvPPIB2p/Ek4gqF4
         ogT0qXLnofUdMCCoZoNuzkpg10K0broEmlpEzKOnCZxsexrKGD8onVPCHOTxf2GjZVE9
         TGCTMy7VTBhp57dY0wqv36uSaJmyNqfpoJWHy8C0+xylKx9mLzyRHs0/yAB648ZU9Cg4
         iqKe4P/9SepFc/KKL9j74gFrTBri2YUVQ404yfu+StbVRvJUVt30LLWrO7wlG5uHM4N/
         bY+Dzp/I5DYzpTKdwj9x1Uh5ryolaCVx787AFTX/M+aHoDNa+/uHUF/gMwzB7p4m6Pds
         077Q==
X-Gm-Message-State: ABy/qLaN7Yxe3fJpMP2k3aSHJkjym1Bd/vjDTbzO1Wd+V+BK6GtFjYZT
        Wznr5LFaLAbgiiB7A+NWcp0CiQ==
X-Google-Smtp-Source: APBJJlFYMn/hMa04m/3HyPt1kQs3tR6WyEkeNn1QB7QSSGrd5pBpQej6DP/GuwOuNUdMOr5ZjXQoBA==
X-Received: by 2002:a17:907:6025:b0:993:22a2:8158 with SMTP id fs37-20020a170907602500b0099322a28158mr120877ejc.61.1689216942405;
        Wed, 12 Jul 2023 19:55:42 -0700 (PDT)
Received: from 1.. ([79.115.63.146])
        by smtp.gmail.com with ESMTPSA id gr19-20020a170906e2d300b0098e2eaec394sm3370236ejb.101.2023.07.12.19.55.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jul 2023 19:55:42 -0700 (PDT)
From:   Tudor Ambarus <tudor.ambarus@linaro.org>
To:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Pratyush Yadav <pratyush@kernel.org>,
        Michael Walle <michael@walle.cc>,
        linux-mtd@lists.infradead.org,
        Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Tudor Ambarus <tudor.ambarus@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: mtd: spi-nor: clarify the need for spi-nor compatibles
Date:   Thu, 13 Jul 2023 05:55:35 +0300
Message-Id: <168921680625.27728.11240136618925333880.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230616140054.2788684-1-miquel.raynal@bootlin.com>
References: <20230616140054.2788684-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Developer-Signature: v=1; a=openpgp-sha256; l=867; i=tudor.ambarus@linaro.org; h=from:subject:message-id; bh=qQrf9UEl4mHPW7uYjAFEMB9b0BBwHqIyTsPDsR2h3mk=; b=owEBbQGS/pANAwAKAUtVT0eljRTpAcsmYgBkr2egyZ2R4+Mvk698dwEXY6GlaMZ18bERxOJDY aBqp0VccFqJATMEAAEKAB0WIQQdQirKzw7IbV4d/t9LVU9HpY0U6QUCZK9noAAKCRBLVU9HpY0U 6QhUB/9DOWFpM/PMJBKdEZGXzpjOlBDEtQppakwcE6ftjqQtApQcSiF33NkMhQ2Ts3M7eVuoDZQ x3/Zk+xmukkwKeje3dbmsJP6GoNFR1Z5XY7yKc4rYrPAW0pAG/tgLpP9zSVlx1dwYP6tcfDQNJn HBVwmW+zpyVvyZm5vXJwnSmpuy2b+bNstx7oolPgUl2xjZhJ6OuwMK2sD4RzmBrkqwdkkGjt4/M qAsH0wKGBkGYOV1OACviGl4nLdjjc2UbzcLXUgMPkbdohpDLGGMqmAF4fnIw0BVvaCKp8NcebnR BHJB4By13mDtzZnsE02HiuBUD862MCrPLSefT7wa/+OjF0ZU
X-Developer-Key: i=tudor.ambarus@linaro.org; a=openpgp; fpr=280B06FD4CAAD2980C46DDDF4DB1B079AD29CF3D
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 16 Jun 2023 16:00:54 +0200, Miquel Raynal wrote:
> Most SPI NOR devices do not require a specific compatible, their ID can
> in general be discovered with the JEDEC READ ID opcode. In this case,
> only the "jedec,spi-nor" generic compatible is expected. Clarify this
> information in the compatible description to (i) help device-tree
> writers and (ii) prevent further attempts to extend this list with
> useless information.
> 
> [...]

[ta: s/JEDEC/JEDEC SFDP for clarity and s/JEDEC READ ID/READ ID as
the opcode is not part of the JEDEC SFDP standard.]

Applied to git://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git,
spi-nor/next branch. Thanks!

[1/1] dt-bindings: mtd: spi-nor: clarify the need for spi-nor compatibles
      https://git.kernel.org/mtd/c/4b0cb4e7ab2f

Cheers,
-- 
Tudor Ambarus <tudor.ambarus@linaro.org>
