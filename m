Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7E84B20EB3B
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2020 04:03:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726806AbgF3CDH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Jun 2020 22:03:07 -0400
Received: from mail-il1-f196.google.com ([209.85.166.196]:40972 "EHLO
        mail-il1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726169AbgF3CDH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Jun 2020 22:03:07 -0400
Received: by mail-il1-f196.google.com with SMTP id q3so5584416ilt.8
        for <devicetree@vger.kernel.org>; Mon, 29 Jun 2020 19:03:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=csZ6MgKDmbsLjQmD8Jx9j4adBtCZ1eYv3tYTT7pCZB0=;
        b=ll5Hv6ZypmxVa8A7LYsJniM1ThL5NpAExPqAPXfrv0pBRQSvXrQHPdHBL03oPu+zDv
         iL2i7Rp+h5937RxBvl07nsYBoTkjuyy3NaSsl+lnOVnjeZgfqIEe34eZxDsuDRlldjsb
         hzOLHWNmwsF6L9HFEtGQ8XEplH0qKCddNjEiohQlmcWnEHneK5pTRqasXGlcuytbvOGI
         62ZW5Fc/xzCHDJTzsXzOzjA4AmAH7dkNbL3hg78W6YzNM+D6Lk9c9nKzodHLYV/SP4XU
         4eecz1UKjoqWpzioavoErKUY6P+cW2nsAIUHp6m0O4TEbGsfDseOJq0wCDoqYorhCSRM
         w9jA==
X-Gm-Message-State: AOAM531JHQTn2u1b10X/XDiT/H+EWq0atCY0LP2LyFDhQrGoy5C96Q3G
        MfdQxafotYikewLIb5dVshHzbVnO2w==
X-Google-Smtp-Source: ABdhPJzZ/lH00VbNsBBfgjuzCFmysl+6Zzw47DxDihz+60dJEyNUHYz6/AwG+pd1r8OKiNdrXou0uA==
X-Received: by 2002:a92:1805:: with SMTP id 5mr386011ily.127.1593482586798;
        Mon, 29 Jun 2020 19:03:06 -0700 (PDT)
Received: from xps15 ([64.188.179.255])
        by smtp.gmail.com with ESMTPSA id m2sm914844iln.1.2020.06.29.19.03.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 19:03:06 -0700 (PDT)
Received: (nullmailer pid 3466268 invoked by uid 1000);
        Tue, 30 Jun 2020 02:03:05 -0000
Date:   Mon, 29 Jun 2020 20:03:05 -0600
From:   Rob Herring <robh@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     devicetree@vger.kernel.org, balbi@kernel.org, robh+dt@kernel.org,
        rentao.bupt@gmail.com
Subject: Re: [PATCH] dt-bindings: usb: aspeed: Remove the leading zeroes
Message-ID: <20200630020305.GA3466083@bogus>
References: <20200629214027.16768-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200629214027.16768-1-festevam@gmail.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 29 Jun 2020 18:40:27 -0300, Fabio Estevam wrote:
> Remove the leading zeroes to fix the following warning seen with
> 'make dt_binding_check':
> 
> Documentation/devicetree/bindings/usb/aspeed,usb-vhub.example.dts:37.33-42.23: Warning (unit_address_format): /example-0/usb-vhub@1e6a0000/vhub-strings/string@0409: unit name should not have leading 0s
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> ---
>  Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Applied, thanks!
