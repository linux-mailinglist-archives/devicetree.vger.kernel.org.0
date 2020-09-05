Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DEB2825EB39
	for <lists+devicetree@lfdr.de>; Sun,  6 Sep 2020 00:06:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728678AbgIEWGi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Sep 2020 18:06:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728327AbgIEWGh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Sep 2020 18:06:37 -0400
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com [IPv6:2a00:1450:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BED08C061244
        for <devicetree@vger.kernel.org>; Sat,  5 Sep 2020 15:06:35 -0700 (PDT)
Received: by mail-ej1-x642.google.com with SMTP id nw23so13086688ejb.4
        for <devicetree@vger.kernel.org>; Sat, 05 Sep 2020 15:06:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=64pulymg8upcn5ooNDwq4fDRvEzDLb+c8LADu532gJ8=;
        b=L7xXcYri0vheic+7Bg0Hs16cq4QR64s38owAc0tQvTg9nYyJ1Ti7HmlyD6LMzNK7ju
         lc+65YMIKhsaTPDPUqjvAJlOTE3j27zyEoffXt7MPyjEc2kYYwrU/edHW9C4IE6xR6lx
         zNgEQiZ0HP0yEBHPnHdisIBkD4aSLV0n8Lj1G2qnI4RaQNpgwFulou6hnhODZZLGjF7e
         LIV1yJkbTDnSk/C3PGzknTqzXGPf3NoztFft/6SqO5fjSi0EnyO/0sG5Xl9RzYwGLyU4
         MidezhSFprJWRFFrYb0SDuqcxTpG1R6B6Io4kE+JMig/cwRxOJam3oerzLRapqXYGFS8
         axXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=64pulymg8upcn5ooNDwq4fDRvEzDLb+c8LADu532gJ8=;
        b=d/+vMaE4FQ6iPzzUP0N58F5cQSwtMmAHXIx2pdAcsmAuCW0dPzhVnSZa8RvV7S0I5D
         UupY8vzAHlO8bS3nNoTFzifE9zfXX0jVjiJ3YkDxm8c2UbknWpRYemhCjttxLixkUmQT
         ZITRP4NpO/l62t+paVEXszhoqcq6rTdOUTkKwZdjXYa0oCUA7PUDPKpGiE46vf2XZqNH
         ilDHR+2OsrfmyTFeUZ7DdLlbsx4fhLNo1dG0ghWOc+Tx9JXxXuiHZf6FxSIM5P3DBX3w
         I5XfqWtRAaO2kp935qCutfCARtTLatPSB/oC5tp5vZWx1FPNnvV2DE7zjcig2Nj2IAHN
         Nirg==
X-Gm-Message-State: AOAM530j6tCdoMnLru1v+RMEpO+0Rfyv1JUTZKj88PJhJvpU6ApXguc+
        bFYbIxBf2ZrpbVNPCtMPBO8=
X-Google-Smtp-Source: ABdhPJzXuqb9wRJESKMWWIbfoTO/dAaWoL/qfK/IYXFBslhLqNl+RSHinaaxYHIZ+Z8DPDjLZgPY5A==
X-Received: by 2002:a17:906:e4c:: with SMTP id q12mr13904690eji.425.1599343594311;
        Sat, 05 Sep 2020 15:06:34 -0700 (PDT)
Received: from debian64.daheim (pd9e292e7.dip0.t-ipconnect.de. [217.226.146.231])
        by smtp.gmail.com with ESMTPSA id ci27sm10568379ejc.23.2020.09.05.15.06.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Sep 2020 15:06:33 -0700 (PDT)
Received: from chuck by debian64.daheim with local (Exim 4.94)
        (envelope-from <chunkeey@gmail.com>)
        id 1kEgKB-000FIi-KV; Sun, 06 Sep 2020 00:06:19 +0200
From:   Christian Lamparter <chunkeey@gmail.com>
To:     linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org
Cc:     Chris Blake <chrisrblake93@gmail.com>,
        Paul Mackerras <paulus@samba.org>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 0/5] powerpc: apm82181: adding customer devices
Date:   Sun,  6 Sep 2020 00:06:10 +0200
Message-Id: <cover.1599343429.git.chunkeey@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

I've been holding on to these devices dts' for a while now.
But ever since the recent purge of the PPC405, I'm feeling
the urge to move forward.

The devices in question have been running with OpenWrt since
around 2016/2017. Back then it was linux v4.4 and required
many out-of-tree patches (for WIFI, SATA, CRYPTO...), that
since have been integrated. So, there's nothing else in the
way I think.

A patch that adds the Meraki vendor-prefix has been sent
separately, as there's also the Meraki MR32 that I'm working
on as well. Here's the link to the patch:
<https://lore.kernel.org/linuxppc-dev/20200822154045.16036-1-chunkeey@gmail.com/>

Now, I've looked around in the arch/powerpc for recent .dts
and device submissions to get an understanding of what is
required.
From the looks of it, it seems like every device gets a
skeleton defconfig and a CONFIG_$DEVICE symbol (Like:
CONFIG_MERAKI_MR24, CONFIG_WD_MYBOOKLIVE).

Will this be the case? Or would it make sense to further
unite the Bluestone, MR24 and MBL under a common CONFIG_APM82181
and integrate the BLUESTONE device's defconfig into it as well?
(I've stumbled across the special machine compatible
handling of ppc in the Documentation/devicetree/usage-model.rst
already.)

Cheers,
Christian

Note:
If someone has a WD MyBook Live (DUO) and is interested in
giving it a spin with 5.8. I've made a:
"build your own Debian System" sort of script that can be
found on github: <https://github.com/chunkeey/mbl-debian>
(the only remaining patch hack is for debian's make-kpkg crossbuild)

Furthermore, the OpenWrt project currently has images for
the additional apm82181-based devices:
 Cisco Meraki MX60(W) - Needs DSA for the AR8327
 Netgear WNDAP620/WNDAP660 - (Could be next)
 Netgear WNDR4700 - Needs DSA for the AR8327

Note2: I do have a stash of extensive APM82181 related documentation.

-- 
2.28.0

