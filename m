Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ABE05370DB4
	for <lists+devicetree@lfdr.de>; Sun,  2 May 2021 17:51:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231909AbhEBPwa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 May 2021 11:52:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230110AbhEBPw3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 May 2021 11:52:29 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50B76C06174A
        for <devicetree@vger.kernel.org>; Sun,  2 May 2021 08:51:37 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id cl24-20020a17090af698b0290157efd14899so496879pjb.2
        for <devicetree@vger.kernel.org>; Sun, 02 May 2021 08:51:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wizwyaD+EdlK+V4oD/yci+eq9mtTfItC823UVBrGPXQ=;
        b=OB1mUdhdcLV6ha4nyV6gu4Q9Scn6rX8NLKskDs6GgDbtJ+9nyNOE2sSaw0l9xFlVR5
         m+yvjbxveRK/WBE4cgoo1GjXN1vL+9e8Ri8epEg7TpWsyPbAqlMxh7SJsEHqF1YBNEAm
         EZUTgx0j0xl+LbhX+95nmIIE4wk3qmZPayEtM2VQA7aMQ8sFJVH8OgG1b6LuhQBOBg+i
         5fmDhg9xtr/d+j7TTaC6PgLXZEzkGmJsIpj5lpqpBO6A6CGeVsK/6LszaO7Qpo29ri3N
         FYCxJrMgW0Xbejh2t3/TVe1wzVjz/qbxgrTXPmq8uQmrzJ04C610NsNNir9mLjdglCn3
         sB5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wizwyaD+EdlK+V4oD/yci+eq9mtTfItC823UVBrGPXQ=;
        b=TvH/ye6AdVoQCdBHIrOK12i0jyJ+afS4jeMzsk4a65Z3A7iMq/APzXlKLLMIMxowLS
         X36Ti5fxkuKpJR6zLr5ihyKkq5bmiSixS1tkl6lbMkMVfViQxL6A5BXZ/5+az2T1dQF+
         t79fEth6+/uN9O7E9X0RS9L32QQyjW3OMrgZJShJUSUot++Fmt1WMbojp7VUxd4jhEgf
         TgCN3Jn2m7/zZP7Ykncp/n1LFK7OJIp57fK7SG8pNdgZIhkmgRTlQQ7V0cfDSb1q3eeN
         qq8Al1wFVzYNlugSElx34aYH7BNj8LL7M1uTpvStjqwGE1iDzB/tKRzYFt54+XNpUJx1
         UXJQ==
X-Gm-Message-State: AOAM532aRZ3VPmmfgc8BDfsz38k+pdazhGSsS/AcqTYca2bpVdSL+iAt
        U40PvsLCIQDUXX0PWWQ60+Q=
X-Google-Smtp-Source: ABdhPJwA1e+INw5Ct0phSUDke4ZTKhOSIK+37CKeXj4Zkc2yo7pBaMI/nUIy65r1EMyv5iMEm2j3dg==
X-Received: by 2002:a17:902:e752:b029:ed:8636:c525 with SMTP id p18-20020a170902e752b02900ed8636c525mr15813667plf.60.1619970696922;
        Sun, 02 May 2021 08:51:36 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id h9sm7519814pgl.67.2021.05.02.08.51.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 May 2021 08:51:36 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        Hauke Mehrtens <hauke@hauke-m.de>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH stblinux 3/6] ARM: Cygnus: dts: fix NAND nodes names
Date:   Sun,  2 May 2021 08:51:35 -0700
Message-Id: <20210502155135.945393-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210416133753.32756-3-zajec5@gmail.com>
References: <20210416133753.32756-1-zajec5@gmail.com> <20210416133753.32756-3-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 16 Apr 2021 15:37:50 +0200, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> This matches nand-controller.yaml requirements.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to devicetree/next, thanks!
--
Florian
