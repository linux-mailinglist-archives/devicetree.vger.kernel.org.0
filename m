Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 751F91D0194
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2020 00:07:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728362AbgELWH6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 May 2020 18:07:58 -0400
Received: from mail-oo1-f67.google.com ([209.85.161.67]:44012 "EHLO
        mail-oo1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728313AbgELWH6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 May 2020 18:07:58 -0400
Received: by mail-oo1-f67.google.com with SMTP id u190so3055655ooa.10
        for <devicetree@vger.kernel.org>; Tue, 12 May 2020 15:07:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=NUOOwHrOXVk6Cd6HoRlhRUSWIWKAqZFM78FnF22feM0=;
        b=a+a2Plcb4tz4clYmXBpfQ/knfglp7MlPTZabd4Ym0k6ppxig08KTbjRn+L7XLr5dE3
         lfypGRlvoLDkzitkTxjYZZPRsVCo+QUJMgvAxsKBf40Y/x8jikQZkHyjzoajOM/FkzOp
         zAiGOiLkzGIv+cnds2t0M8ZWsIaXMmDhkEsYtwXsWWv5o6o5ADGGJiQNM0pXmOtI2LDy
         qYQlYXN5A+jX6+Z/3It0k852XQD1PTXTvKXLaWnFFR7cEZbRXoK6YkNbZrax4eJ5swGq
         CPNRZbMxFsVNGsvIKui8Tmf1K3/xenszNPqS6JUrmTsPKR+8aPGcIXq2fGNg+U/Z9aAO
         Nlag==
X-Gm-Message-State: AGi0Puaktyx2aJHnANsy+acKc3XVMEZbjtO5JkIS+9jBn8Sco7lopchl
        k2jHRoAQCcCqQdyejuuhMA==
X-Google-Smtp-Source: APiQypL9TW4TGt20w5Jple5Aqf1zZMKRE0HhZ/U3Jxjl239/1alxIU/5DUa3XmaHc6UgYt7WD1pjEQ==
X-Received: by 2002:a4a:3ed6:: with SMTP id t205mr7688147oot.51.1589321277493;
        Tue, 12 May 2020 15:07:57 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id s125sm5705132oib.9.2020.05.12.15.07.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 May 2020 15:07:56 -0700 (PDT)
Received: (nullmailer pid 20180 invoked by uid 1000);
        Tue, 12 May 2020 22:07:56 -0000
Date:   Tue, 12 May 2020 17:07:56 -0500
From:   Rob Herring <robh@kernel.org>
To:     Vesa =?iso-8859-1?B?SuTkc2tlbORpbmVu?= 
        <vesa.jaaskelainen@vaisala.com>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH] dt-bindings: vendor-prefixes: Add Vaisala
Message-ID: <20200512220756.GA20129@bogus>
References: <20200503093355.46964-1-vesa.jaaskelainen@vaisala.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200503093355.46964-1-vesa.jaaskelainen@vaisala.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun,  3 May 2020 12:33:55 +0300, Vesa J��skel�inen wrote:
> Vaisala Oyj is a company based in Finland and also has subsidiaries in other
> countries. Vaisala develops, manufactures and markets innovative products and
> services for environmental and industrial measurement.
> 
> https://www.vaisala.com/
> 
> Signed-off-by: Vesa J��skel�inen <vesa.jaaskelainen@vaisala.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Applied, thanks!
