Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 219803157D9
	for <lists+devicetree@lfdr.de>; Tue,  9 Feb 2021 21:43:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233882AbhBIUlF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Feb 2021 15:41:05 -0500
Received: from mail-ot1-f52.google.com ([209.85.210.52]:35822 "EHLO
        mail-ot1-f52.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233740AbhBIUgt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Feb 2021 15:36:49 -0500
Received: by mail-ot1-f52.google.com with SMTP id k10so16379984otl.2
        for <devicetree@vger.kernel.org>; Tue, 09 Feb 2021 12:36:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=1aYpcD4VuQOpMJvgjUFMkW5FGvnbf7RZiRf2rUksBW4=;
        b=AqJqwkeWxa0xpphhWWgdUAfcZ1N1giwST8FADF8viKamcOOIHhIBm5Qr11NE4h1oOQ
         M6EQdcKXhAcXCbhLBqBDCxHTHxLEkRsa0S0x3/51hWl89h1Oos9PjIxRgwol0GhwCpS+
         E+G9xkd5bO9ie9BKYkZ9oGKWKhS3YhbHq/5qWtruAKcLnDols4A+6Y6ARHwdgOA2r+7Z
         5Un/cYUwiyboq2Ozc1P2a8I9QsQLo+WexMkRPPp22IwTCLLWVP5xyiHD5STx1lxeyk9q
         0A5NE14+cvsVxMwBCuP6rX1P7KYkfMDJ3t020ya1Rcpthm2mhKC+2AWLOQ6vwpPYq18P
         8sMQ==
X-Gm-Message-State: AOAM530Yhwy67OiIAm/3Yh84X8UE7OZ1BYhO2mw0OQwbwihhtS37Z/OU
        g5EIcNSElT4xdPmySAG0mQ==
X-Google-Smtp-Source: ABdhPJyMm6ERS7/qP0ACvjy5OvEsswCVQRdpGuPiyWbQfdh9lOHx0FtLFl0NCwx4m6P+uCRBvmCsnw==
X-Received: by 2002:a05:6830:1c7b:: with SMTP id s27mr7700324otg.144.1612902968653;
        Tue, 09 Feb 2021 12:36:08 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id j8sm4398879oie.47.2021.02.09.12.36.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Feb 2021 12:36:07 -0800 (PST)
Received: (nullmailer pid 128212 invoked by uid 1000);
        Tue, 09 Feb 2021 20:36:06 -0000
Date:   Tue, 9 Feb 2021 14:36:06 -0600
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, Eric Anholt <eric@anholt.net>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 1/3] dt-bindings: Add vendor prefix for Displaytech
Message-ID: <20210209203606.GA128153@robh.at.kernel.org>
References: <20210130181114.161515-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210130181114.161515-1-marex@denx.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 30 Jan 2021 19:11:12 +0100, Marek Vasut wrote:
> The Displaytech Ltd. is an LCD panel manufacturer.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> To: dri-devel@lists.freedesktop.org
> Cc: Eric Anholt <eric@anholt.net>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: devicetree@vger.kernel.org
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
