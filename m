Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 38F9547F5CE
	for <lists+devicetree@lfdr.de>; Sun, 26 Dec 2021 09:25:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231612AbhLZIZo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 Dec 2021 03:25:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231434AbhLZIZo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 Dec 2021 03:25:44 -0500
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3742C061401
        for <devicetree@vger.kernel.org>; Sun, 26 Dec 2021 00:25:43 -0800 (PST)
Received: by mail-lj1-x235.google.com with SMTP id r22so20559260ljk.11
        for <devicetree@vger.kernel.org>; Sun, 26 Dec 2021 00:25:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cogentembedded-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FAYkYUz34vDfmPxF9cy0ZNORdc1GXTwn4ICVP/BMoeo=;
        b=Cdt9njQ060eTyJ482U+YmuZasI/aoW/AM6k2Om4IrjblKbsfMfX3Ns9Rn7Nb7npeSK
         W7YCyd0cp3i2poh2rJHnMKAtEm616s607HuytrKTTP39/WXqTBmvymG5ZtmPHjinu8G6
         qyhp2jYO23FZs8x+hOR3SEkM45hSOBNpvoJuPgLm5CDvwBhxj1pzhrBdw7RSzycQhFlX
         Gp3CGZNSnzHa4VVwIIJDdMm5IqxKMTbLIjOHaynaTJiUIrs4vW5aYMrDzNA7pQLwgYn7
         m9u+q6RnYu45Ipo3By7QBLREPRbgtn9bBjdOZFlzbeRPjzMQNTaKCYw8nuTCNmI8gfjH
         y84g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FAYkYUz34vDfmPxF9cy0ZNORdc1GXTwn4ICVP/BMoeo=;
        b=CUudBGfQhz2iF6iTWBjqYp/dxe3CkjtLKYqPJdezAi5NQ5imRPehiFEcD8TBgD7fva
         iQALuPbgc1wVC7o7sr0bPxx2muOYkBn5F7xTdMVXLIcXHS+4/DY5YuCY5ICYDp+lLiuh
         P63zp6c3R8LxGzMAQQ/BR6erzR4OUie644CqEdPXB1qvF2l+A2X7POmAtQB74hsGUMwQ
         b+z2AgRuCE5Xa9/tIxFDBedIPBX1maX8odejm/A2Li4hKfqCOyXSTIQ+Og2CZioug8S+
         nd9xpMObmNhWOtHW043jebPtgXQX2Q723eJWxS/vEaz5ZA2efRQ9hE4wbrtZdXy6d2/x
         +VzA==
X-Gm-Message-State: AOAM533kXtroFjzNQTJi+r233USb+KBTzHOTdG53YjSA/8K4etfVg4NI
        Alva5t0F2owCKIkxFWVvXu4LJg==
X-Google-Smtp-Source: ABdhPJwCLnovYDajFgtC0vLk0ZLarDVxe6L3Q7U94afPWmYrblYqmeKO0tAwOlv0+033UervqZyfyQ==
X-Received: by 2002:a2e:50c:: with SMTP id 12mr9269654ljf.57.1640507141836;
        Sun, 26 Dec 2021 00:25:41 -0800 (PST)
Received: from cobook.home (nikaet.starlink.ru. [94.141.168.29])
        by smtp.gmail.com with ESMTPSA id z5sm1309023lfd.184.2021.12.26.00.25.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Dec 2021 00:25:41 -0800 (PST)
From:   Nikita Yushchenko <nikita.yoush@cogentembedded.com>
To:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Christian Gromm <christian.gromm@microchip.com>
Cc:     linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
        Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Subject: [PATCH 0/3] Renesas R-Car Gen3: add support for MOST device
Date:   Sun, 26 Dec 2021 11:25:27 +0300
Message-Id: <20211226082530.2245198-1-nikita.yoush@cogentembedded.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch set applies misc fixes to the MOST dim2 driver, and adds MOST
device definition to dtsi files for R-Car Gen3 SoCs that have it.

Nikita Yushchenko (3):
  staging: most: dim2: update renesas compatible string
  staging: most: dim2: use consistent routine naming
  arm64: dts: renesas: add MOST device

 arch/arm64/boot/dts/renesas/r8a77951.dtsi | 13 +++++++++++
 arch/arm64/boot/dts/renesas/r8a77960.dtsi | 13 +++++++++++
 arch/arm64/boot/dts/renesas/r8a77961.dtsi | 13 +++++++++++
 arch/arm64/boot/dts/renesas/r8a77965.dtsi | 13 +++++++++++
 arch/arm64/boot/dts/renesas/r8a77990.dtsi | 13 +++++++++++
 arch/arm64/boot/dts/renesas/r8a77995.dtsi | 13 +++++++++++
 drivers/staging/most/dim2/dim2.c          | 28 +++++++++++------------
 7 files changed, 92 insertions(+), 14 deletions(-)

-- 
2.30.2

