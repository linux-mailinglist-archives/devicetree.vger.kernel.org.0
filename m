Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B63C73331D6
	for <lists+devicetree@lfdr.de>; Wed, 10 Mar 2021 00:05:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230473AbhCIXEl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Mar 2021 18:04:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230320AbhCIXEb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Mar 2021 18:04:31 -0500
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5702C06174A
        for <devicetree@vger.kernel.org>; Tue,  9 Mar 2021 15:04:31 -0800 (PST)
Received: by mail-pj1-x1033.google.com with SMTP id lr10-20020a17090b4b8ab02900dd61b95c5eso3758041pjb.4
        for <devicetree@vger.kernel.org>; Tue, 09 Mar 2021 15:04:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=EW89otrMfBXHoKo8iUEJsayOmd4S7+QiA3MzARbOxBA=;
        b=J3NYdxjyyoV0O5+kfHW8YctKdIBHaBSHofo33VzeMBjr2FU6HTPQ1R86r75vxEEzjp
         Gwlhqu2ef74ZhW6Nxt2kbxKwp6zQExmN+tZbTSTEAJJf5N80O5UywrL1FAhqmK2spgkH
         qYyCNgdjFQ9ttgEHMIG7EXSReCu9OQrZn8VzBcrerCCOMid/gHH/UwrH6XFHiosp2r6D
         vFkLt/mRxH+B1WKF3vBVmCme7A5RrxX8jQOhm/EID4T7vl4QknVuNl6nx+MQWPRKOINQ
         JIXkDM8N1rJ/fbdLSltU9eQ2qXc4KUgDw+4tJx4wf+vPL3o2tFL5cXQ03gvZyeY6C/Nf
         UsgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=EW89otrMfBXHoKo8iUEJsayOmd4S7+QiA3MzARbOxBA=;
        b=LUWd1HMv98NZcns1kY8cHd+F/qgMQGkHENHDi0NaAfmC5Capl9gboqc6fo8Nk1d1Y/
         UXzuUTkalgSOupeicraFa188uXUziJt6FcVVFs9IE2psYRLmZLLPRbJOGPAiCpaOjdkp
         MDoP0b1scWEpA/UcWu51xH6AR3A+SDMHYf1V2cTQD6B2fdT8DgYMT5qOV+Oz5DIFjPP/
         DyQSns1Fbu/X3kkoStYmAUSaIj8Q8KkEbZv9hSoHdQgML+UotW+wi1IC+X7bK/iw8OlQ
         7ey7J3Gd2rRsdIH8HqzVDfs4aqmW0uw81AKdqSyK6gHQowBDlo9Wo73dSg0eoOxwevan
         kMuA==
X-Gm-Message-State: AOAM53076YqXmC2zZdDOTGt0qX2gAiHegOmRfjf/F/2tBG7xTRDXPULs
        Tkw2jbB0rxsUsY9D5cIp278=
X-Google-Smtp-Source: ABdhPJwZI+6K++MhvAXNpx6ta7fYK5WscwUkOa3Bl67YQ8YVpSbFeE5BM4YOs+oaEmpkigV5hKtLIQ==
X-Received: by 2002:a17:90a:a789:: with SMTP id f9mr258089pjq.192.1615331071344;
        Tue, 09 Mar 2021 15:04:31 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id y15sm16438349pgi.31.2021.03.09.15.04.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Mar 2021 15:04:30 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH] arm64: dts: broadcom: bcm4908: fix switch parent node name
Date:   Tue,  9 Mar 2021 15:04:29 -0800
Message-Id: <20210309230429.1225808-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210309184409.31409-1-zajec5@gmail.com>
References: <20210309184409.31409-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue,  9 Mar 2021 19:44:09 +0100, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Ethernet switch and MDIO are grouped using "simple-bus". It's not
> allowed to use "ethernet-switch" node name as it isn't a switch. Replace
> it with "bus".
> 
> Fixes: 527a3ac9bdf8 ("arm64: dts: broadcom: bcm4908: describe internal switch")
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to devicetree-arm64/next, thanks!
--
Florian
