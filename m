Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 71C4734ED92
	for <lists+devicetree@lfdr.de>; Tue, 30 Mar 2021 18:19:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232298AbhC3QSs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Mar 2021 12:18:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232090AbhC3QSa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Mar 2021 12:18:30 -0400
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A62BC061574
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 09:18:30 -0700 (PDT)
Received: by mail-pj1-x102d.google.com with SMTP id a22-20020a17090aa516b02900c1215e9b33so9701587pjq.5
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 09:18:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=platinasystems-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Nav8LadcpFIxdskcDBBNZMpNM5ijLXJvIdbPHCb3P6k=;
        b=CyGQt6icjhD10GaQAeQisHngs3kN/4kJsMfK6abeb5qKWv9Vd5f+445IeGRhGpIfuj
         6pJxgjgn5d6zgep4sUfokmWWi2SdroztqdRiQxtnKyR0ST51Do27fP0vYFcwY3q9l2/J
         ZrRHVY5WML4iymb+YQCWL/KqPOFWOsMLJU+akIYbHpDT2UXeDzwziY72W0Z8EBZTXx7n
         6bjZtdP9dmt5Vnz/xm+PsC0f+tQninRwFkj2us6NjXkA2Npmha1mn+FIyPdwpS9hzObC
         W6CBEAjXbkEAtlTm+R1a1qJEyQNCZp7XwkqUFPjg+AfqzR6c63OtZvaVknDv8N7gYxFt
         mPrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Nav8LadcpFIxdskcDBBNZMpNM5ijLXJvIdbPHCb3P6k=;
        b=SX2UmTUn/ccovrBGMhAK2cbpSkKTXnKMJwkLdrojMIVWdSYsdZc6/sy7U6TvI7Dtha
         YcARCMb2W9qOPGwagxrFS92a3Oqkl+V+ynXdD8YY6+9+QDro+U6qe6kTbaOhdYKblgNS
         p83bp4GSl2pb47jQrcOGpI82en6Am+dEcloiOh4hnQ+lt7c9B2eRoBgmK6YzS+rJBcsf
         6Paa7pSU1FepOlI2L7BacE0aKgiJiRPU0wRUCnR0/0+cDXVDxMj1vUyzFan22Rpt05gW
         08NjLFm3h6jw0uNgwp+PuQCe43P9Z5DEG3NmZk5rtGb19KdTdBDHx6dof1NQcqdLA+n3
         e7+A==
X-Gm-Message-State: AOAM533TqUdW9lHqxzUy2gAFmxwxcTha7JbYiVqEpcd37GrbP0rCXarH
        sDgf2RnzlkiUcD1O4yOtOCokFg==
X-Google-Smtp-Source: ABdhPJyoZ9vhg9J78woeiM37PYeuWAAcn0Fw9i/T5uw4eC/r8Ot9VRpuRcERpNgh1WXJgtOPjPw2cg==
X-Received: by 2002:a17:90a:7045:: with SMTP id f63mr5069092pjk.35.1617121110100;
        Tue, 30 Mar 2021 09:18:30 -0700 (PDT)
Received: from localhost.localdomain ([207.53.255.56])
        by smtp.gmail.com with ESMTPSA id q34sm21040555pgl.92.2021.03.30.09.18.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Mar 2021 09:18:29 -0700 (PDT)
From:   Kevin Paul Herbert <kph@platinasystems.com>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     "Rafael J . Wysocki" <rjw@rjwysocki.net>,
        Len Brown <lenb@kernel.org>, linux-acpi@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org,
        Tom Grennan <tgrennan@platinasystems.com>,
        linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/1] nvmem: Change to unified property interface
Date:   Tue, 30 Mar 2021 09:18:14 -0700
Message-Id: <20210330161814.3144336-1-kph@platinasystems.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210329223827.2851916-1-kph@platinasystems.com>
References: <20210329223827.2851916-1-kph@platinasystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

nvmem: Change to unified property interface

Change from using device tree (Open Firmware) APIs to the unified
'fwnode' interface.

Change of_nvmem_cell_get() to fwnode_nvmem_cell_get(), and add a
wrapper for of_nvmem_cell_get().

Change of_nvmem_device_get() to fwnode_nvmem_device_get(). There
are no known accessors to the OF interface, so no need for a wrapper.

The first version of this patch incorrectly had a wrapper for
of_nvmem_device_get(), even though the comments about the patch
not needing this were correct.

The second version of this patch had an incorrect return type for
of_nvmem_device_get().

