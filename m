Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E217F3044B6
	for <lists+devicetree@lfdr.de>; Tue, 26 Jan 2021 18:17:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390375AbhAZRH7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jan 2021 12:07:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390393AbhAZIql (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jan 2021 03:46:41 -0500
Received: from mail-pj1-x104a.google.com (mail-pj1-x104a.google.com [IPv6:2607:f8b0:4864:20::104a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E43B1C061573
        for <devicetree@vger.kernel.org>; Tue, 26 Jan 2021 00:45:53 -0800 (PST)
Received: by mail-pj1-x104a.google.com with SMTP id o4so1391877pjw.2
        for <devicetree@vger.kernel.org>; Tue, 26 Jan 2021 00:45:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc;
        bh=TvDirtp33tQ52/+xfhxSiL9lDOUp03iq0TnEaNmWwQQ=;
        b=bo/qYJO/oWZGzk/RT0zMkXs3Ry7yVRr04zttXknovn8ZuFXa85/EcnqhgYLpg/kLbC
         ZWi25BKBWd+66y9XCGYfS6iWMVwQyMFbxQnPtFE8O4lfNB667xGyiY56IChHH5YB/1Nr
         xVMu7drtb+kPwQrKYh2Sw6cQ9XyZIw3C/RCMG0kob1M7vsf9ESRo+z08g+QqZ2eFABBj
         z/a75c12n1yZwUHSTUZm5dRT4imd4DyIWQZav4p6wRf1k7jP9DU2GkqN9z+2VY2meGig
         SYmGDNQNvt73YAgmYVacSqt671mlNnaohCuusHnX1z3PrqM7efAL/R9V5CEAK4bL1z52
         Mjog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc;
        bh=TvDirtp33tQ52/+xfhxSiL9lDOUp03iq0TnEaNmWwQQ=;
        b=aenSMQoAn1P4rkeQg1AX7YNCt26oWHzB+2y6l+s3GMkna71iOftdWW1zyclTs5cWFA
         eZVeFvEhA9uxZmuiGKF9qygoxm1AE+rQ6tpwVVAfq+sqd4CjYOa0LH2K1b1dTta45pJ3
         kRiP3nL0tak2UihhN01FQR2QbhPhMGP5VRnu0ALZMO5WN67QGdC5fzmaW0ttZ9qo2TMY
         1dS/KC+BQuA5wDXh6n1ebPsD1QjHzUYL0Zt25JVDsAN8sA2bZ64sCMeKlQc2v69DG5Ad
         fJTpCodk7IEtruMpMWu1lWCnHyMJoCsOahO2Zb5h5QZBJdqbwuiSFYwNTlr3UARZ/HVj
         FZVQ==
X-Gm-Message-State: AOAM531WB05bak7WEKdBgwVLUibWWLpB9pKseeSQRTr82ixd12Y0Wb4k
        3HF0w5zjHKs36PVrnitFP4z3IJP5bZKb
X-Google-Smtp-Source: ABdhPJwpx0HIv3y1JBgyuhRp7JMI+b0CQQDa80hg7y5P3WpuD9CFOIEDueuJD8x6PH4eP17R4/5Rq0r2uH0y
Sender: "kyletso via sendgmr" <kyletso@kyletso.ntc.corp.google.com>
X-Received: from kyletso.ntc.corp.google.com ([2401:fa00:fc:202:4430:c29c:1e76:3e65])
 (user=kyletso job=sendgmr) by 2002:a17:90b:3789:: with SMTP id
 mz9mr5203328pjb.4.1611650753479; Tue, 26 Jan 2021 00:45:53 -0800 (PST)
Date:   Tue, 26 Jan 2021 16:45:41 +0800
Message-Id: <20210126084544.682641-1-kyletso@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.30.0.280.ga3ce27912f-goog
Subject: [PATCH 0/3] common SVDM version and VDO from dt
From:   Kyle Tso <kyletso@google.com>
To:     linux@roeck-us.net, heikki.krogerus@linux.intel.com,
        gregkh@linuxfoundation.org, robh+dt@kernel.org,
        hdegoede@redhat.com, badhri@google.com
Cc:     linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Kyle Tso <kyletso@google.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The correct SVDM version we should use is the lowest common version             
between the port partners (plug) as stated in the PD3 Spec 6.4.4.2.3.           
It is determined in the Discovery Identity command so cache it and set          
the value to the version field of the VDM header in every later SVDM.           
                                                                                
Like the previous patch "usb: typec: tcpm: Create legacy PDOs for PD2           
connection"                                                                     
(https://lore.kernel.org/linux-usb/20210115163311.391332-1-kyletso@google.com/) 
The field is changed before sending it out of the port. I know this is          
not a good idea but at least it works.                                          
                                                                                
The other two patches are about to get the VDO from fwnode so as to give         
more flexibility.

Kyle Tso (3):
  usb: typec: Determine common SVDM Versions
  dt-bindings: connector: Add SVDM VDO properties
  usb: typec: tcpm: Get Sink VDO from fwnode

 drivers/usb/typec/altmodes/displayport.c |  6 ++-
 drivers/usb/typec/class.c                |  8 ++--
 drivers/usb/typec/tcpm/tcpm.c            | 56 ++++++++++++++++++++----
 drivers/usb/typec/ucsi/displayport.c     | 12 +++--
 include/dt-bindings/usb/pd.h             | 53 +++++++++++++++++++++-
 include/linux/usb/pd_vdo.h               | 40 ++++++++++++-----
 6 files changed, 147 insertions(+), 28 deletions(-)

-- 
2.30.0.280.ga3ce27912f-goog

