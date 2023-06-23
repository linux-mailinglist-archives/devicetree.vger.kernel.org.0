Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E6D8C73B654
	for <lists+devicetree@lfdr.de>; Fri, 23 Jun 2023 13:33:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230387AbjFWLdf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jun 2023 07:33:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229745AbjFWLde (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Jun 2023 07:33:34 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91D9AC6
        for <devicetree@vger.kernel.org>; Fri, 23 Jun 2023 04:33:33 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2b47742de92so9580831fa.0
        for <devicetree@vger.kernel.org>; Fri, 23 Jun 2023 04:33:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rasmusvillemoes.dk; s=google; t=1687520012; x=1690112012;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KL5Es5yoKODcRM+6rC2Tw/Cdo+3M+IOhet0H/IGNQNk=;
        b=Q/qy0dXyCmDSnYgzmdOwO5Rps42C2f9Dvp3GrgNQJfFcyu3WWQ/1KOPZoLZLKfy87s
         iWPasAdoPG4K/dz8/jA/OqpXCK+uAdOyykRWtxx7T8MtcALA7E9U8kL4kkk8qIw81pet
         iKISr4gQQXEevNoLmM185WwvtmZDRMGD8TfpI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687520012; x=1690112012;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KL5Es5yoKODcRM+6rC2Tw/Cdo+3M+IOhet0H/IGNQNk=;
        b=C7cQkAcGrMzJJRiwI3CM+17pOUOzeFqs0IfLI+sIceTKJmG5xa7+LQyC0YLO+cTFxO
         nuY6nFG/zr+uHRSFEups+uU0UZ4ETjbUY9A41SXrxOmYg7A5PzGhwsoITtzsSlpXfnVs
         4XbebVODRrxkyl+szce/JVkk1PAVkwTEVe7yuEBE3JlXNUbYZ95K4PXSYmGD6CeRZUQw
         7CQ6M3KK5/Jd1Njf4zrpFYNA7yFbUvQRnolWl11jHkvouNw5V/oOfWM64jZdXgTtwjqg
         Z/I9euSp2uDbP4on+mHrcoJ+hhJYs85lRLklI35WQkDqmd2JF8lVe4guuFxgEDnGiw7R
         Bn5g==
X-Gm-Message-State: AC+VfDwbwFIGC5mY3cHlNmjWK5I1l2M68Cikr8/in94D8OBSdcsSNHgR
        v4cJWmPpSVrdIakLgtN5HixbJw==
X-Google-Smtp-Source: ACHHUZ7BUw7tqddVi82XfXFElJrN5r7xeUFrxWqsoaePUeB6rPEEAmG8j++sT6mIUJmh/Jah5qMZEw==
X-Received: by 2002:a2e:9e44:0:b0:2b3:4cff:60ce with SMTP id g4-20020a2e9e44000000b002b34cff60cemr12557049ljk.0.1687520011672;
        Fri, 23 Jun 2023 04:33:31 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
        by smtp.gmail.com with ESMTPSA id n10-20020a2e720a000000b002b471efb253sm1711605ljc.46.2023.06.23.04.33.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jun 2023 04:33:31 -0700 (PDT)
From:   Rasmus Villemoes <linux@rasmusvillemoes.dk>
To:     Cosmin Tanislav <cosmin.tanislav@analog.com>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Michael Hennerich <Michael.Hennerich@analog.com>,
        Jonathan Cameron <jic23@kernel.org>, linux-iio@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Rasmus Villemoes <linux@rasmusvillemoes.dk>
Subject: [PATCH 0/2] iio: ad74413r: allow configuring digital input threshold
Date:   Fri, 23 Jun 2023 13:33:24 +0200
Message-Id: <20230623113327.1062170-1-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The reset default value of the DIN_THRESH register is 0x0, meaning
that the threshold for the digital input channels is 1/60 of AVDD. In
most applications, that value is way too low and susceptible to noise.

These patches introduce a new DT property,
digital-input-threshold-microvolt, which if present will be used as
the threshold in "16V" mode, i.e. as an absolute threshold, not
proportional to AVDD.

If someone needs the threshold to be proportional to AVDD, but being
say 15/60, another DT property (mutually exclusive with this one)
could be introduced. But since I don't need that and can't come up
with a good name ('digital-input-threshold-60ths-avdd' ?) I punt that
problem to whoever needs it.

Rasmus Villemoes (2):
  dt-bindings: iio: ad74413r: add binding for digital input threshold
  iio: addac: ad74413r: wire up digital-input-threshold-microvolt DT
    property

 .../bindings/iio/addac/adi,ad74413r.yaml      | 10 ++++++++++
 drivers/iio/addac/ad74413r.c                  | 20 +++++++++++++++++++
 2 files changed, 30 insertions(+)

-- 
2.37.2

