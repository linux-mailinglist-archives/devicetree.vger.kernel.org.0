Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4A3F73E5A25
	for <lists+devicetree@lfdr.de>; Tue, 10 Aug 2021 14:41:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238880AbhHJMmH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Aug 2021 08:42:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238851AbhHJMmH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Aug 2021 08:42:07 -0400
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88E7DC061798
        for <devicetree@vger.kernel.org>; Tue, 10 Aug 2021 05:41:45 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id t7-20020a17090a5d87b029017807007f23so4108771pji.5
        for <devicetree@vger.kernel.org>; Tue, 10 Aug 2021 05:41:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=jEv32BiVnu7fQqSnvPGcx5ruZj5V0HnF2prfpKqxjn4=;
        b=0mjhlmrZSBz51JqUD9OH0DhuZBRxI34vxDlxoSVsklAlLVx+DB4RYGu4wXSCPJo6bE
         0Rj1Ffse8Rzx2ep4AxTlkweNF25Z6t+4LZO9PAdFTLPcQXwbra9BkRNXLHiVKaTsNc0S
         +ixAQQ2i6aJthqyAUcHvnh8fjB5XaFTimMRxJcK8KBdSEvIxfGKjYcbv5RpgW2yA029b
         ZfALDvV0HR4/2en03DYTmB2UEgKkjXlvfeQd+NIYlDc4ILWvxdqWUoEG+deW7Q3HdAV6
         XilWTUU3kgXGlUtEyArDUU12hOt0M0ah1oK3apBp/eiU70CaaFA9B1cMk20hy53/fqj7
         I6rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=jEv32BiVnu7fQqSnvPGcx5ruZj5V0HnF2prfpKqxjn4=;
        b=twyjWHdqPWzrJpTYTEsWu67TlC98wqn69edhmaR22BzKQRfzmP186xXO2Z43gpBhT1
         UixbbEli9pFhrX51jcJz018vfLfqUSiDXf5eYLIaEU2N78U+ic6ACnY3Knd+MrP3/wqX
         i5Yjf9TomxpeKTh/kYQDotffBsXd2fbGi9o2OhjH+06pGMjAgiXW/rsaZDC+dhTR/W/2
         J+fJd2WnPJ9PxfF3KD+C6/YdcrSkOtyDizJpT35Zvd8bYv/SiDGOA9hIs90R7RQO46jO
         k3FvWMGWK+d66zc/D28G8ZpoM/5WlIyfSLrcc+7LJRDVUm0tYpBd1QlWf28xp7Lrw6f1
         H4Eg==
X-Gm-Message-State: AOAM532b9mnP99IA/qxcsjVT7qL4mcpU7f5OwmcfcX5oGw6v0zVrVtLe
        bTS1s+cW0TiD1uNFvCY+b2vKdg==
X-Google-Smtp-Source: ABdhPJxAEsdQRashpCRGsGTtR9hGQpKEX2bQMXc4GZMfve1VZFx9ipQvlCg0rOzK62MK+kdtLSnIMw==
X-Received: by 2002:a65:55c6:: with SMTP id k6mr188593pgs.129.1628599305051;
        Tue, 10 Aug 2021 05:41:45 -0700 (PDT)
Received: from ubuntu.huaqin.com ([101.78.151.214])
        by smtp.gmail.com with ESMTPSA id y12sm23851561pfr.68.2021.08.10.05.41.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Aug 2021 05:41:44 -0700 (PDT)
From:   xiazhengqiao <xiazhengqiao@huaqin.corp-partner.google.com>
To:     pihsun@chromium.org, drinkcat@google.com, marcheu@chromium.org,
        jitao.shi@mediatek.com, thierry.reding@gmail.com, sam@ravnborg.org,
        airlied@linux.ie, daniel@ffwll.ch, robh+dt@kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH] drm/panel: Add inx Himax8279d MIPI-DSI LCD panel driver
Date:   Tue, 10 Aug 2021 20:41:40 +0800
Message-Id: <20210810124140.16937-1-xiazhengqiao@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210412080134.24598-1-xiazhengqiao@huaqin.corp-partner.google.com>
References: <20210412080134.24598-1-xiazhengqiao@huaqin.corp-partner.google.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

could you help to review this patch? This patch has been applied to our devices which use

INX 2081101qfh032011-53g 1200x1920 video panel and it works well.

thanks.
