Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BD461234DB4
	for <lists+devicetree@lfdr.de>; Sat,  1 Aug 2020 00:44:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726666AbgGaWn4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Jul 2020 18:43:56 -0400
Received: from mail-io1-f65.google.com ([209.85.166.65]:37742 "EHLO
        mail-io1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726099AbgGaWn4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Jul 2020 18:43:56 -0400
Received: by mail-io1-f65.google.com with SMTP id w12so19583696iom.4
        for <devicetree@vger.kernel.org>; Fri, 31 Jul 2020 15:43:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=6IztlK+IAJuBlWDQIoX1NU4H9u7fpmfUjFlqqFnOXko=;
        b=ih0uXLjlbf2tGiGkD9qqBZ0mfso7/JSHPinm1kqXFc2jUFy9ftTDR/q9wY88rEAAL8
         jAgL0fPl+mF/m+CeA9RSeh+cpcl/XGGhxtxkStcQHM99VtoTzVUJmlRPx5F+wL6hiSGx
         k3ZtjyKmmxdSzcb6SHfDI7cxWSkjaXKuUwtbn7S5+zcBUIKei07TDaXqFo913SOPBFK7
         wKp3yndOFLHOWyXjUMaZAU94I9Ons76fWQcDEBBfzeyy+NG3svQbuWgL4wd/hxMSx17s
         Y0e6fyjS0E/1Ynsz8jmqLYcCKGao4kD5qTF6YDUDIqUoZ7S8oV3l/Tcn22kldAUdMqGu
         LzEQ==
X-Gm-Message-State: AOAM530kGwpiBCS+sxKXtidU1D6GgVFze+SO/pkQ8UPcN7b1t39l6kWS
        9TTmddWhEPb7j0QQXbIiWg==
X-Google-Smtp-Source: ABdhPJwQNO01LtfYoGxADUwkP3tZ0r70bvsQoe+C0eNzGaurZvgWCRKP/JqBBPRWk606qMtwk1uZTw==
X-Received: by 2002:a5e:c703:: with SMTP id f3mr5619608iop.185.1596235435466;
        Fri, 31 Jul 2020 15:43:55 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
        by smtp.gmail.com with ESMTPSA id u12sm5548268ilj.17.2020.07.31.15.43.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 15:43:55 -0700 (PDT)
Received: (nullmailer pid 944544 invoked by uid 1000);
        Fri, 31 Jul 2020 22:43:53 -0000
Date:   Fri, 31 Jul 2020 16:43:53 -0600
From:   Rob Herring <robh@kernel.org>
To:     David Bauer <mail@david-bauer.net>
Cc:     devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/2] dt-bindings: Add doc for FriendlyARM NanoPi R2S
Message-ID: <20200731224353.GA944440@bogus>
References: <20200730232054.286381-1-mail@david-bauer.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200730232054.286381-1-mail@david-bauer.net>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 31 Jul 2020 01:20:53 +0200, David Bauer wrote:
> Add devicetree binding documentation for the FriendlyARM NanoPi R2S.
> 
> Signed-off-by: David Bauer <mail@david-bauer.net>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
