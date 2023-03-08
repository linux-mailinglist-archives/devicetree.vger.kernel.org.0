Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7075B6B0C66
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 16:18:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232110AbjCHPSj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 10:18:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232120AbjCHPSV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 10:18:21 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9285241095
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 07:18:11 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id h14so15737558wru.4
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 07:18:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678288690;
        h=content-transfer-encoding:subject:to:from:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=CpL8pfFHgYoyZ2Mo0Ft2NbfXGys8eh5PDeoz/LLjCnE=;
        b=j01vmDtNKMnl/Skd0HFk4NjhFUf+fvSNj7FobvwPws8Uu4MsA89c4y4yiagMmW5Via
         wu5PWbqqDtAzKSEyopZrpmyBNBiZxD/BycPaEJ8FzZp3lz9AxNg1M4vnhPzSl026Jeu+
         Y+AmO2/y+ONhAuqWk0s+/Pc8UK7amK7bdmr8mchMT3/mduHMDmh3oqjn2MKYXV2VZC1e
         bp2xEw6O0zs32TRsGqJJOXD21dPcixCkBzeRihHr2QtWSXDzcdmgkRnRBLu94JDj8jfH
         nNRn/GYw/t37FPWyCH5tjGynzCr520BjGpfMirqRNEvBMGlcTfRYJvMraY3PMvBz2ZA8
         17ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678288690;
        h=content-transfer-encoding:subject:to:from:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CpL8pfFHgYoyZ2Mo0Ft2NbfXGys8eh5PDeoz/LLjCnE=;
        b=6c3S+ii+Qusqg+uFE8HDQ1PdTuAlqy9f6olWCJvgFA+/jaqC5vyd2T5IY+cimEpkuS
         3QDBO1rlskgVnioKxI1/VphspDdO8AFxWLwZKwgHZVtkOjyqkMAk55rmYNVORytN7Mqi
         G8bVoJoc0maJJSvGwCs4M5D/opIHZXy9e/MlkK1BE++C7mvBS2P1ZZN4QpCAUwThsajP
         McN68VY+QJsIjsQSPlOqJFyGY47bS9Ue5sejv7Zc6B5BUgMAPHOuNNKCUVAKD/blscFp
         ZFYWo9RYT+kZPOGKrBEJ+MTcd6amHIZwMLoirPKeZWjDewKfz5mn+mZrseHKNxsR7sz9
         GCIQ==
X-Gm-Message-State: AO0yUKX0uFyNLCXx/XejryuupSuOIBBik7FQNYFzSCG0lr6Xm+dKWrOy
        JfxYAjsCqWI6ffkcFrwXpfPUwXKBFWc=
X-Google-Smtp-Source: AK7set/0b02L8zJP0qpMvVbRR3IBE1HPlZGYEFcj0CGKuaoxSB4ESMD89tAegzpQWcte39JMqF5HeQ==
X-Received: by 2002:a5d:46c8:0:b0:2c7:1d26:7686 with SMTP id g8-20020a5d46c8000000b002c71d267686mr12188565wrs.3.1678288689834;
        Wed, 08 Mar 2023 07:18:09 -0800 (PST)
Received: from DESKTOP-8VK398V ([125.62.90.127])
        by smtp.gmail.com with ESMTPSA id s17-20020a5d4ed1000000b002c5584d0e3dsm15265847wrv.24.2023.03.08.07.18.08
        for <devicetree@vger.kernel.org>
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Wed, 08 Mar 2023 07:18:09 -0800 (PST)
Message-ID: <6408a731.5d0a0220.1c799.e973@mx.google.com>
Date:   Wed, 08 Mar 2023 07:18:09 -0800 (PST)
X-Google-Original-Date: 8 Mar 2023 20:18:08 +0500
MIME-Version: 1.0
From:   terenceblake6795@gmail.com
To:     devicetree@vger.kernel.org
Subject: Bid Estimate
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=0.9 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,=0D=0A=0D=0AWe provide accurate material take-offs and cost=
 estimates at low cost and with fast turnaround. Our team of prof=
essionals has been providing these services to General Contractor=
s, Subs (Painting, Electrical, Plumbing, Roofing, Drywall, Tile a=
nd Framing etc.). We offer both Residential and Commercial Estima=
tes and we cover every trade that you wish to bid, whether you wo=
rk with CSI Divisions or your unique classification. We use the l=
atest estimating software backed up by professionals with over a =
decade of experience.=0D=0A=0D=0AWe are giving almost 25% Discoun=
t on the first estimate.=0D=0A=0D=0APlease send us the plans or l=
inks to any FTP site so that we can review the plans and submit y=
ou a very economical quote.=0D=0A=0D=0ABest Regards.=0D=0ATerence=
 Blake=0D=0AMarketing Manager=0D=0ACrown Estimation, LLC=0D=0A

