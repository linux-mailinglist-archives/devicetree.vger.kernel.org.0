Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 297406221F3
	for <lists+devicetree@lfdr.de>; Wed,  9 Nov 2022 03:31:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229639AbiKICbQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 21:31:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229517AbiKICbP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 21:31:15 -0500
Received: from mail-oa1-x31.google.com (mail-oa1-x31.google.com [IPv6:2001:4860:4864:20::31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E50D45E3F6
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 18:31:13 -0800 (PST)
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-13b103a3e5dso18323628fac.2
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 18:31:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rothemail-net.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ww2TeGktykkYrrth2osTASbO94QrRn0AazbCn9H9bdU=;
        b=UMbPUtwRELVaqw+iuAjaDdHH0I3KcJNc2et2Ozgb43zjn81aKtt6Lb6CgOfNUhrjsL
         VHH+bfNtg9y1NtjQGlmp1+P5K7ZbBGfxLrcMmxjSew1XVyFzJV7vSotTUbIY6GBHGqdW
         qxnThzd4DTKDSfOp7uBlS1yc2JvvbTzS5eQiL8Frto5dV+FDw8JfDFlGalLhmilnHIml
         uDu18Pl+pRI5T7LjFgCNfEf5F1tDBi+MJPc7YePSCShPA9g6ipiQxy/CEipr75HtzUo8
         6GeRRzlY9uGhMD/2VlHUqwLTbc7r9BVyWaO+nnqU4UK16Fa7oerOhYM+1kT44nJl/cCS
         VbTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ww2TeGktykkYrrth2osTASbO94QrRn0AazbCn9H9bdU=;
        b=62ikGgwhM8eJLYmEoMyWyMeJY5JoVvNX8Yb9dqIgSVCSCsnHctkTFhRdU4CqcdFbMv
         J4Q0hLhe+JF4SsnfQ8FCYlHYbhWQvVyTiyIYzj1YRUH8picFJT98Sx9pCcQxs3ih2d/T
         W2rY6W7iO63sTN7bkIL4OfojfzsMkcZLvgjiB0VX/R0ZazMc3PbfNL4eBBqiV7b70i22
         806l+OjmFgkSimqk5rNqCucJeiiQjV+opNH8zBBrGwJU+v/U0XoqLLX2NVAAoIr6hHmS
         vIlXKB0TxdB0x+IsLsffMbDaDRL+5gAG1POrvEjT/QeMx35oT8yuU9+xlRqJLYOpHttf
         RRBw==
X-Gm-Message-State: ACrzQf3GNkcz0f2gcmI/fAGfSTEMG36bWcjdbiUEKT5YR538Q6AKPA6c
        cmC/25iIKeQbYdeQSPpawJm5hvt6rTolQEfE
X-Google-Smtp-Source: AMsMyM5NjHjHhghecHO89gd6HB4BY53Ga8lbpazQX2kgCvcZSiFSdOFiHwhNI32kT8/DrGAuamoEsg==
X-Received: by 2002:a05:6871:5cb:b0:13c:6ef9:a1b6 with SMTP id v11-20020a05687105cb00b0013c6ef9a1b6mr37724200oan.48.1667961072271;
        Tue, 08 Nov 2022 18:31:12 -0800 (PST)
Received: from nroth-pc.attlocal.net ([2600:1700:20:20c0:52f1:294a:8d5c:ee])
        by smtp.gmail.com with ESMTPSA id m14-20020a9d7ace000000b0066cacb8343bsm4257675otn.41.2022.11.08.18.31.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Nov 2022 18:31:07 -0800 (PST)
From:   Nicholas Roth <nicholas@rothemail.net>
To:     devicetree@vger.kernel.org
Cc:     mchehab@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Subject: ov8858 device tree addition
Date:   Tue,  8 Nov 2022 20:31:00 -0600
Message-Id: <20221109023100.64143-1-nicholas@rothemail.net>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Device tree entry for ov8858 image sensor.

Changes since v1:
* Fixed CC list
* Changed filename and path
* Added documentation for power GPIO
* Fixed linter errors


