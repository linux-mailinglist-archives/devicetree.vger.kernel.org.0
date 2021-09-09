Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 86EC9405C7D
	for <lists+devicetree@lfdr.de>; Thu,  9 Sep 2021 20:01:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237300AbhIISCv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Sep 2021 14:02:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241914AbhIISCu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Sep 2021 14:02:50 -0400
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com [IPv6:2607:f8b0:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53945C061574
        for <devicetree@vger.kernel.org>; Thu,  9 Sep 2021 11:01:41 -0700 (PDT)
Received: by mail-pg1-x531.google.com with SMTP id t1so2606352pgv.3
        for <devicetree@vger.kernel.org>; Thu, 09 Sep 2021 11:01:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3k6JBX60yOEujPVtzH8etMCB636norCxHTYXA1Wwp6U=;
        b=UWoJ7Tl96nMLj4/pd6VYhx+j5n1juXPUlsv8zlvOXRAUrjdgrdA5YXJvoh5S+GW7Cv
         1LIXnY5pYLnO5H2+LqWtbbWUDzKemGE6M6tkEZGGq0qv/pIiyddbaihRiMECAjwS++7Q
         a1RM895KJDce/KWrcNK05R9+ZeGJOlbw8spCsGz8xXkRz9/C80k4WyVGe6rz95CtOCp3
         YZi6txk6jEdpS6arwGYXlNLmN9Lq9aq3NgLgR4CLAos5U9GKH56+AKRopFww6jX62ia1
         pGb2hKtdBVJp05x3RazfiqstJoDhchrOiR9hPXwm8BAnn4PXjsXY7DX/oTiqT6vYaW9L
         1qOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3k6JBX60yOEujPVtzH8etMCB636norCxHTYXA1Wwp6U=;
        b=JVaopH5fcK7iyqISuG7tWOJ0dD0j67NiCb0lUzC6ecg4pferpJBv+ULcqrrNYcZTld
         X2YM4Oe1UqnCPrDvgtcsOvQTMxIu6mw6gdIERDcUOLBg03Myo/YCA2lskmOp9ngcKpCS
         dNos8HNG/uLbwGfE8i3aphvB3WhGpBag+Nl2odn3Au+xzj0RfLFfUtB/aLZlTmb5Hzgv
         Fkwh43GqkS19CJ0fXxmnB41P3fNuNxJATjApbu7rkY4b4CBvLszPhfyWZhTIEAJZXDWw
         lLp9bUbtTC3KzfV7bYyJfcub0bEJPMpnAH3+hCcxAUpIwGnx8ZtugXNSsOp7Loqsx+vx
         x3hQ==
X-Gm-Message-State: AOAM532PqPMOYS+pdTDmmaTidT1zZ32NCqyDjD7GruQ4REv8kKMK28pz
        0x8SykXzt6IRpv+EC0QpdlI=
X-Google-Smtp-Source: ABdhPJx9cjCMTBB/aigDo45MoHWN3EB1i+4VfMW+Ib5+3wBfFEu7gIVRorWsCIXczcKeaTHvw6f7HA==
X-Received: by 2002:a05:6a00:2d4:b0:409:6830:f66d with SMTP id b20-20020a056a0002d400b004096830f66dmr4017780pft.54.1631210500813;
        Thu, 09 Sep 2021 11:01:40 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id i10sm3016198pfk.151.2021.09.09.11.01.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Sep 2021 11:01:40 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH next] ARM: dts: BCM5301X: Specify switch ports for more devices
Date:   Thu,  9 Sep 2021 11:01:39 -0700
Message-Id: <20210909180139.3386206-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210907060048.26597-1-zajec5@gmail.com>
References: <20210907060048.26597-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue,  7 Sep 2021 08:00:48 +0200, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Those are remaining models I have that didn't have ports yet. All
> tested.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
