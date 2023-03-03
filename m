Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6718A6AA46E
	for <lists+devicetree@lfdr.de>; Fri,  3 Mar 2023 23:32:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232853AbjCCWcf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Mar 2023 17:32:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231873AbjCCWcS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Mar 2023 17:32:18 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FFFF6511D
        for <devicetree@vger.kernel.org>; Fri,  3 Mar 2023 14:26:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1677882276;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=L3ylgBtssVDhhmOywBZWjMnNLtpF4ejFsajBAITSPKs=;
        b=aHLABrSZMELINHUa8vN1DbxOXbXgzpw+6g0mMEs2zHuq8XjhB9luB97fic7dIt8Zb3At0E
        aVAqkqxnOOl+1PiEBEhGbcBra+f+6nuGRIqIWAfBbpdXiSwPUlW1afTBip7nssMxFHD4WC
        sytp0cwNNLR0d2RDqq7EPq3/++jUJlY=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-623-3SkJk10sMfOet9SKkVO8Tg-1; Fri, 03 Mar 2023 17:21:23 -0500
X-MC-Unique: 3SkJk10sMfOet9SKkVO8Tg-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D458038041E0;
        Fri,  3 Mar 2023 22:21:22 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.39.192.21])
        by smtp.corp.redhat.com (Postfix) with ESMTP id 341C1492C3E;
        Fri,  3 Mar 2023 22:21:22 +0000 (UTC)
From:   Hans de Goede <hdegoede@redhat.com>
To:     Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc:     Hans de Goede <hdegoede@redhat.com>, devicetree@vger.kernel.org,
        linux-input@vger.kernel.org
Subject: [PATCH v2 0/2] Input: hideep - 2 HiDeep touchscreen patches
Date:   Fri,  3 Mar 2023 23:21:11 +0100
Message-Id: <20230303222113.285546-1-hdegoede@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Dmitry,

Here are 2 patches for the HiDeep touchscreen driver,
new in v2 is the addition of the second patch, patch 1/2
really is just a resend.

Regards,

Hans


Hans de Goede (2):
  Input: hideep - Silence error in SW_RESET()
  Input: hideep - Optionally reset controller work mode to native HiDeep
    protocol

 .../bindings/input/touchscreen/hideep.txt     |  1 +
 drivers/input/touchscreen/hideep.c            | 23 ++++++++++++++++++-
 2 files changed, 23 insertions(+), 1 deletion(-)

-- 
2.39.1

