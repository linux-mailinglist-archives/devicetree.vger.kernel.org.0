Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2C113111B14
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2019 22:38:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727466AbfLCVik (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Dec 2019 16:38:40 -0500
Received: from mail-oi1-f193.google.com ([209.85.167.193]:37149 "EHLO
        mail-oi1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727430AbfLCVik (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Dec 2019 16:38:40 -0500
Received: by mail-oi1-f193.google.com with SMTP id x195so4821577oix.4
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2019 13:38:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=F3uHqZbzedLUE0xuUfIMpIgrRc1NYArGkbcNIpnaHjU=;
        b=dK4Fk3NZvnXPYX1s/DRzRPAMSHfCkZvjXX4eLM9NQiqHLyTWSmAvMBtIwJS5HKaEaC
         cs6dXzhUjG7/n5gQIM3pOA/PQDoyyTnw4Q1VPXCugM2u6Thym2UsDaJsC/zjv03nAak9
         IfVgPnJSEtOi7ElIieLRw45Yv6jnz32xZq39ro5GAcyyMREm1HvNqXb7e/5U+6t7luj4
         ohL8O9IPwcfAk1zRpP6NiVt9bA3QT/9o918kzidYNS/reB2TjIy5LhGuO3E505AQgCbq
         9zsUD2TzPrZrttM8eikhUFYdHzBW+rSQ+UCO4AKb07MRS3Kt5nbFrtHWrj5ZLL6aIZZ7
         XSrg==
X-Gm-Message-State: APjAAAXNWSmFO+0DomSp7Z3nI//OlZ4q/g9KlnOLDBudzXzQPerPVzLf
        ilIiu0W2c2MV14MFWSZH8A==
X-Google-Smtp-Source: APXvYqzrwgm/HxFVUZ352gIniGDYj8kl0CmjIYTrPSpfZC7zbhYc9s6vYb6cfEfd3T4Cfiq4raE4WQ==
X-Received: by 2002:aca:889:: with SMTP id 131mr75288oii.3.1575409119897;
        Tue, 03 Dec 2019 13:38:39 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id o2sm1582504oih.19.2019.12.03.13.38.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2019 13:38:39 -0800 (PST)
Date:   Tue, 3 Dec 2019 15:38:38 -0600
From:   Rob Herring <robh@kernel.org>
To:     Dong Aisheng <aisheng.dong@nxp.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        dongas86@gmail.com, kernel@pengutronix.de, shawnguo@kernel.org,
        robh+dt@kernel.org, linux-imx@nxp.com,
        Dong Aisheng <aisheng.dong@nxp.com>
Subject: Re: [PATCH 2/3] dt-bindings: serial: lpuart: add imx8qm compatible
 string
Message-ID: <20191203213838.GA21567@bogus>
References: <1573995530-14573-1-git-send-email-aisheng.dong@nxp.com>
 <1573995530-14573-2-git-send-email-aisheng.dong@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1573995530-14573-2-git-send-email-aisheng.dong@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 17 Nov 2019 20:58:49 +0800, Dong Aisheng wrote:
> Add imx8qm compatible string.
> 
> Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> ---
>  Documentation/devicetree/bindings/serial/fsl-lpuart.txt | 2 ++
>  1 file changed, 2 insertions(+)
> 

Applied, thanks.

Rob
