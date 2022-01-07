Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9063F487F5F
	for <lists+devicetree@lfdr.de>; Sat,  8 Jan 2022 00:30:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231481AbiAGXae (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jan 2022 18:30:34 -0500
Received: from mail-oi1-f178.google.com ([209.85.167.178]:46911 "EHLO
        mail-oi1-f178.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231465AbiAGXad (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jan 2022 18:30:33 -0500
Received: by mail-oi1-f178.google.com with SMTP id y128so3957901oia.13
        for <devicetree@vger.kernel.org>; Fri, 07 Jan 2022 15:30:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=O/iD3tdBB3xVuayEsVXxg6fqn4fmkXCd4VPpIGfu9oc=;
        b=ackqlGcZunZdWcmbdiCLJpM9ZGEwjUa8Lq+5O1v/Oz/oh/erd2VHWMdxJQ3y0pAE6A
         oKIo3trH3jUW0Q6ToSDqpILejHv9UKwA4tkDG9n92yqDZghxUjsSRBbfzzKOrqZwpoEZ
         Lb+6pPGsvDYO5rZssxJjrJty1JkQnHZQ+jQOw1P17bT4CpDj882W8y3mQBcZwbU1piqy
         DXPEE/6euvhfYNSW2tm4+WlzVjV2f5XBZPMDg5MiJAmpwzXJmOWkoeNo+6nTsGEEqmhA
         85fuA5TfESmxR9aK6GGMgjkpEGaeui+Wv5uMVWiw1jPlsfwSZvuwGtH7hUQYZC8QMMzi
         l0mw==
X-Gm-Message-State: AOAM532/t2kfI9Y/r308z6BpeRPtke0WXWI+4bnt1cmglMTPSeQty7xA
        1aaDW68O6n88aNxW4b2A1g==
X-Google-Smtp-Source: ABdhPJyDxlMLa/oqgS+vyjrfO/N5JEs22HsQFch4w5rz4l0CvIPkpUhgsdrFkWO2K0dZkrGGs5tY/Q==
X-Received: by 2002:aca:44c1:: with SMTP id r184mr11184490oia.15.1641598233007;
        Fri, 07 Jan 2022 15:30:33 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id e4sm26666oiy.12.2022.01.07.15.30.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Jan 2022 15:30:32 -0800 (PST)
Received: (nullmailer pid 4139934 invoked by uid 1000);
        Fri, 07 Jan 2022 23:30:31 -0000
Date:   Fri, 7 Jan 2022 17:30:31 -0600
From:   Rob Herring <robh@kernel.org>
To:     Baruch Siach <baruch@tkos.co.il>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/2] of: base: Improve argument length mismatch error
Message-ID: <YdjNF1cEmgOl3ho5@robh.at.kernel.org>
References: <96519ac55be90a63fa44afe01480c30d08535465.1640881913.git.baruch@tkos.co.il>
 <f6a68e0088a552ea9dfd4d8e3b5b586d92594738.1640881913.git.baruch@tkos.co.il>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f6a68e0088a552ea9dfd4d8e3b5b586d92594738.1640881913.git.baruch@tkos.co.il>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 30 Dec 2021 18:31:53 +0200, Baruch Siach wrote:
> The cells_name field of of_phandle_iterator might be NULL. Use the
> phandle name instead. With this change instead of:
> 
>   OF: /soc/pinctrl@1000000: (null) = 3 found 2
> 
> We get:
> 
>   OF: /soc/pinctrl@1000000: phandle pinctrl@1000000 needs 3, found 2
> 
> Which is a more helpful messages making DT debugging easier.
> 
> In this particular example the phandle name looks like duplicate of the
> same node name. But note that the first node is the parent node
> (it->parent), while the second is the phandle target (it->node). They
> happen to be the same in the case that triggered this improvement. See
> commit 72cb4c48a46a ("arm64: dts: qcom: ipq6018: Fix gpio-ranges
> property").
> 
> Signed-off-by: Baruch Siach <baruch@tkos.co.il>
> ---
> Note that commit 72cb4c48a46a mentioned above is currently in the
> arm64-for-5.17 branch of the qcom git tree.
> 
> v2:
> 
>   Extend the commit log to explain the apparent node name duplication
> ---
>  drivers/of/base.c | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
> 

Applied, thanks!
