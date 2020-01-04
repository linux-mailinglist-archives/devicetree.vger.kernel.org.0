Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B46C912FFE3
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2020 02:03:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727149AbgADBDK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Jan 2020 20:03:10 -0500
Received: from mail-io1-f66.google.com ([209.85.166.66]:39957 "EHLO
        mail-io1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726968AbgADBDJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Jan 2020 20:03:09 -0500
Received: by mail-io1-f66.google.com with SMTP id x1so43144596iop.7
        for <devicetree@vger.kernel.org>; Fri, 03 Jan 2020 17:03:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=x/iGc+RKtnsFuMU64/4qfZ200vWGywjrQ0igZLbD2L0=;
        b=gXMH5u5m9bTTcDchmX0xAOdS2cdVIAunEw78hCCTUXiMASSdJsCW0sPwAZQdWQ+cNE
         ASRr8rXD0ijtRQtNDcV5HdQA1mE29HaaJfYuTHu82XP+UOQziWiUSfmgJZuVbmgIPO+b
         J2aPxCiDqV3pNeVV1BbdugqleR8xDUcpkR2aUZjy0N3LjVSyr2PXoOhuL/IL+sVtL1Sa
         HGsmChj2tNGoi249o2RBmpCYh88WqFOndYbl6XS7uRmRDUVLz92if1hL0bJQCp7cuAGC
         CvOJFs4IG0LWjnresdftTNKGIzCJrYZJPtAQ+C/hxXvVjIf3FH0o0xzZcvo/mx4n/8Pp
         S/Bg==
X-Gm-Message-State: APjAAAVMOttFmga3HAQBI/8Kup1ximHlVdnvqzwx74WDTdl6Z+rNT7eW
        3AfeeF7j9mKk05YXXtZ82l45hx8=
X-Google-Smtp-Source: APXvYqxMjXtuQECRAF6otEJXnu05AtnRA9+3RaFfcgvoRjh/QW0Rshdh21DlGt9/6M1XiNn3p9YHrw==
X-Received: by 2002:a02:cdcb:: with SMTP id m11mr72077761jap.125.1578099788808;
        Fri, 03 Jan 2020 17:03:08 -0800 (PST)
Received: from rob-hp-laptop ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id s10sm15335213iop.36.2020.01.03.17.03.06
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jan 2020 17:03:07 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 2219b7
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Fri, 03 Jan 2020 18:03:05 -0700
Date:   Fri, 3 Jan 2020 18:03:05 -0700
From:   Rob Herring <robh@kernel.org>
To:     Beniamin Bia <beniamin.bia@analog.com>
Cc:     linux-hwmon@vger.kernel.org, Michael.Hennerich@analog.com,
        linux-kernel@vger.kernel.org, jdelvare@suse.com,
        linux@roeck-us.net, mark.rutland@arm.com, lgirdwood@gmail.com,
        broonie@kernel.org, devicetree@vger.kernel.org,
        biabeniamin@outlook.com, Beniamin Bia <beniamin.bia@analog.com>
Subject: Re: [PATCH v2 2/3] dt-binding: hwmon: Add documentation for ADM1177
Message-ID: <20200104010305.GA21152@bogus>
References: <20191219114127.21905-1-beniamin.bia@analog.com>
 <20191219114127.21905-2-beniamin.bia@analog.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191219114127.21905-2-beniamin.bia@analog.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 19 Dec 2019 13:41:26 +0200, Beniamin Bia wrote:
> Documentation for ADM1177 was added.
> 
> Signed-off-by: Beniamin Bia <beniamin.bia@analog.com>
> ---
> Changes in v2:
> -adi,r-sense-micro-ohms: replaced by shunt-resistor-micro-ohms 
>  .../bindings/hwmon/adi,adm1177.yaml           | 66 +++++++++++++++++++
>  1 file changed, 66 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/hwmon/adi,adm1177.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
