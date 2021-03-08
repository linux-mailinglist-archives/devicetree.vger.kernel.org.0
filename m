Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D9196331A0B
	for <lists+devicetree@lfdr.de>; Mon,  8 Mar 2021 23:13:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229797AbhCHWM6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Mar 2021 17:12:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230169AbhCHWMj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Mar 2021 17:12:39 -0500
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47CA5C06174A
        for <devicetree@vger.kernel.org>; Mon,  8 Mar 2021 14:12:39 -0800 (PST)
Received: by mail-pl1-x62c.google.com with SMTP id a24so5535726plm.11
        for <devicetree@vger.kernel.org>; Mon, 08 Mar 2021 14:12:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=aPd3ove27haCrKyUJkCmRmAchy+ntpaW7kc42gmbK8Q=;
        b=jhdALIq9FbMvx9H7qXteBM08gKF8JkpHk3rDxFHvcp/07Gd9lWuYtIRKdW8IiGzVee
         cbCBX3/1KvRC/JfnawwWQ5XVwtgbibi8zgi9aCMxX78SJbG+SJleBEKt2DSnGLZqAo7B
         Vw+iVtJ4mnts624ukQiuX2+iGz59xns2PBfRbKL6t2DNkhDhRk+zvTfZ+rF4XZm+QO9M
         XZMnsXZ+HbxW9n/546lVhmm/dybtX62F1XeTJnOlnyjDMehnH2Pe3e2L4KYckfv0mr2W
         PfmSJ4n1EL98H7KWIxNa5V0w22DIDXjnNFHCBcwRfTD7De30PaXwteC6G+MuE7bt9/Xu
         cLow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=aPd3ove27haCrKyUJkCmRmAchy+ntpaW7kc42gmbK8Q=;
        b=lhkqtPt0vwds3WZI8WQhbaXhJToYBpb2P2C0CsJd8jq/lRGXGPi7Hi7f1IUI++LFIW
         FH5TJokHk08IUtwzcqRolQmrjV2q44Zd+0E0o/k1aKcBo5QNzSiGUoFOHZnqQPGsqwXh
         qqHiX6g7eINa7s5uQKFTOCsGSGczvVa5NdZiPaOHkG2UsJh/0kf1q7vYdaazKuFu6u2k
         WrIs2dBOfGYrAFqvg2kYbWkF1o/CzaNMTXiaitP7m4R9l6sc9y7NGj7n900Afn+8iofC
         R0FKWbhpFGckYyHmM4go7v94r+zz914Flm2YpdvofGArPPk+qB7EINle2w4EViZh2SGC
         VQBw==
X-Gm-Message-State: AOAM532y2j7iNMT7rCpQUphIZAjO3FPAzXkwK2HWKeieEZHmyu9IgxG3
        M9WE+3XeITYbQ/KphXdTsTg=
X-Google-Smtp-Source: ABdhPJzJ5T2CWkOkaihonAgfbVm2h+WBtjYjE5EuGvLqdDCZBjS+T5RQRE5m4FSKO4BUVtYLQDpuoA==
X-Received: by 2002:a17:902:e78e:b029:e4:84c1:51ce with SMTP id cp14-20020a170902e78eb02900e484c151cemr22616874plb.25.1615241558860;
        Mon, 08 Mar 2021 14:12:38 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d6sm10886531pfq.109.2021.03.08.14.12.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 14:12:38 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH V2 5/5] arm64: dts: broadcom: bcm4908: describe firmware partitions
Date:   Mon,  8 Mar 2021 14:12:37 -0800
Message-Id: <20210308221237.394801-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210219055030.3997-5-zajec5@gmail.com>
References: <20210219055030.3997-1-zajec5@gmail.com> <20210219055030.3997-5-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 19 Feb 2021 06:50:30 +0100, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> BCM4908 bootloader supports multiple firmware partitions and has its own
> bindings defined for them.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to devicetree-arm64/next, thanks!
--
Florian
