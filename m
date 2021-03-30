Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7FF1F34E01B
	for <lists+devicetree@lfdr.de>; Tue, 30 Mar 2021 06:27:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229763AbhC3E1Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Mar 2021 00:27:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229689AbhC3E0x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Mar 2021 00:26:53 -0400
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E009C061765
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 21:26:53 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id kk2-20020a17090b4a02b02900c777aa746fso7002192pjb.3
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 21:26:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=platinasystems-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=amQkhd8fLGZRPPJUB14300VNr0MzcVU8fRDKRIiZlqg=;
        b=ucGgrCSgKN4NQH3jj2HTuP7UG01/lAvGmcGLx2ufrA06x5fHrsLN8WK+++ueE03Kax
         JGoBAlFtoeFKp8ptjRKoJYzDJ83BMNee/IXlXVUZPNx66tMZtQjWIVFhoFrolOeHz4Vz
         K/GyFxLNMuDARJ2KBcKzSuIJ9p/JjDuWsHJcnqOrR/AfjSONs0ZQ4tyCc22KiuAt/Hvn
         15B0vQtpMd7dQ1wQldrxs28Vp/+0U4Zm0oVSlLBuUr9eSddhBUgNqBlriscG0IqNd+L/
         y/FlL3q3VLXjbNaDyVAerAxraF1PpOi9YYoGogVzdT59YrkvqD2uPHEYKKQWzhscDl6U
         Si8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=amQkhd8fLGZRPPJUB14300VNr0MzcVU8fRDKRIiZlqg=;
        b=MD6nmmVY90KSlZrU+zPdPPZcF5Tmq8Oumn/ftwXKbMndF7KH4+WZ28YMtbE5q5aPpS
         /UA4lbhIo84a6JnYe+CqU+IMVJl+0TYbXPYUA3bGb31yHioIDG2JoVjC841PCB05sedR
         VpndKcP2fcTWe2IMMpMjRV0VcurpGuR78GCfllxr4DS2owfID/HCgHJ8GfsbaJnhyaww
         KFq0T6Da0SeAddQxfCow3PsEJ9iVTxP2MgIDMGGJRYQ4fw2LHyuHniTiWni9lcyrQ03b
         LJOMKnGYUNEWrzbi0ecuE4orndM4jJeMuflwbvnH/QwTNlBJvLmu3VMkFkRQM45CbcMh
         8r9Q==
X-Gm-Message-State: AOAM532wrZtAV6f1+RoXzFfLVHETaW6hhpErVRKs2YK6jJU3JLHIEbyO
        sld9LeHy+ueWt6SYEQm2wsUqfQ==
X-Google-Smtp-Source: ABdhPJw6H1zvqQLUhtLSXn5oyGF04JK5wkHdAbb80IUmCZYpHnTABgYPMnislkAmdg3wNSjs+71XZg==
X-Received: by 2002:a17:90a:8981:: with SMTP id v1mr2511490pjn.230.1617078412686;
        Mon, 29 Mar 2021 21:26:52 -0700 (PDT)
Received: from localhost.localdomain ([207.53.255.56])
        by smtp.gmail.com with ESMTPSA id q95sm1245973pjq.20.2021.03.29.21.26.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Mar 2021 21:26:52 -0700 (PDT)
From:   Kevin Paul Herbert <kph@platinasystems.com>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     "Rafael J . Wysocki" <rjw@rjwysocki.net>,
        Len Brown <lenb@kernel.org>, linux-acpi@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org,
        Tom Grennan <tgrennan@platinasystems.com>,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2] nvmem: Change to unified property interface
Date:   Mon, 29 Mar 2021 21:26:31 -0700
Message-Id: <20210330042631.2945107-1-kph@platinasystems.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210329223827.2851916-1-kph@platinasystems.com>
References: <20210329223827.2851916-1-kph@platinasystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


THis first version of this patch erroneously had an unnecessary wrapper
for of_nvmem_device_get() even though the commentary properly stated
that the only wrapper needed was of_nvmem_cell_get(). Fix the code to
match the intent.

