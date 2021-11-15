Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3149E4510D8
	for <lists+devicetree@lfdr.de>; Mon, 15 Nov 2021 19:52:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243153AbhKOSzm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Nov 2021 13:55:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242709AbhKOSxc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Nov 2021 13:53:32 -0500
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com [IPv6:2607:f8b0:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE7C3C0A3BDC
        for <devicetree@vger.kernel.org>; Mon, 15 Nov 2021 09:52:54 -0800 (PST)
Received: by mail-pg1-x534.google.com with SMTP id p17so15234226pgj.2
        for <devicetree@vger.kernel.org>; Mon, 15 Nov 2021 09:52:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=PysuOVVYYCC5IyVjTSBR960u43EB1dxudmkbb1E7LvY=;
        b=a/Bk3Zr1dBHOWquK8hMZpNnw2cu9MOdxzySByC9EFR5V9Rso3kV5RXiiMswZq9Kudm
         4Z5W4TkFIJMC2FtHlb1pyXV2WTTEgBwMvOCXAMNRxIAg03NAm9kcNLjJt37tXrXFZfem
         RFSnfOQDLP5tdfBGy1HhvtBb8ZeCnODzYFjyDFEpDZsQ0+7B87UWHskqep++BftZiL/v
         Mc8mnGIYMtEIDJMtUptMdb1YZ4jKYko2TkiSg8WSmErGLVGik6pJssYpLUV2Sh+RAdvp
         7Z548Ue7ibSnsuFcVdcQk8jOVTOuZwzS14wxmh15oVozslOGR5dNHcHFv7zuOudmCIFI
         Yaew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=PysuOVVYYCC5IyVjTSBR960u43EB1dxudmkbb1E7LvY=;
        b=eslveYAAThX2RV7CQr+w32N4Q+Bua6+2wY34UAhFDglH45wgl17GQGGL60uO0EW5Wf
         XqAs/NsJT+YKbRURD84jDGojnXXS1PFIRmrLzUpZPSmrte2Op77UnIsvGOVnD80ViORh
         QniY5If632wvLDlbWFwjpUswl7w4+kR+tqmZ2eKlSF4Dl99kkx3qhBjQzRxylTWaYwEt
         LKGVmu88r96RoOGAgkOhg3/+mWIope3MBuptpQTiVlzTWZniulfeNA/AFKVeaGlk123Z
         dwUP+spXhJLGQGWu7KHIceKP8MhHZlubv3X+wzQNAzl28sAw5uRJB/QuDXwQCVGTl3vP
         FZ/A==
X-Gm-Message-State: AOAM531W/4WRBJZ5zit0Cl5Q41a7wFp/l36IpHT49E4rCOLPadFECZF7
        6frqaG+vC6GwepWFCjOScms=
X-Google-Smtp-Source: ABdhPJws5CdfkD5RR2MrqZwVVAuUpgYLWMAps0qaCkB09M39C8UTM8xnlfKgeRP40p3uA1R3Gu2ixQ==
X-Received: by 2002:a63:88c8:: with SMTP id l191mr419202pgd.369.1636998774266;
        Mon, 15 Nov 2021 09:52:54 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id mg12sm18826pjb.10.2021.11.15.09.52.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Nov 2021 09:52:53 -0800 (PST)
Subject: Re: [PATCH 1/2] dt-bindings: arm: bcm: document Netgear RAXE500
 binding
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20211105101413.14926-1-zajec5@gmail.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <c8974173-f18e-20e5-c699-d85734a0f1a3@gmail.com>
Date:   Mon, 15 Nov 2021 09:52:52 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211105101413.14926-1-zajec5@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/5/21 3:14 AM, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> One more BCM4908 based device.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to
https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!
-- 
Florian
