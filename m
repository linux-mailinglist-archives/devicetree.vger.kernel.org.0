Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 99AE22853AA
	for <lists+devicetree@lfdr.de>; Tue,  6 Oct 2020 23:10:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727412AbgJFVKk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Oct 2020 17:10:40 -0400
Received: from mail-oi1-f196.google.com ([209.85.167.196]:43161 "EHLO
        mail-oi1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727362AbgJFVKk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Oct 2020 17:10:40 -0400
Received: by mail-oi1-f196.google.com with SMTP id l85so54264oih.10
        for <devicetree@vger.kernel.org>; Tue, 06 Oct 2020 14:10:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=kTATTMgorx/0wnOTvunh97XG7tTwiJ2A/AXODyWYgg8=;
        b=ojMvWzn4JrSQbIcHqUHhevquuzUjZ0PUxqzDNrP0/OaIKieWNpHlRK97NOXX6YDOtw
         Qls4BGbxzljh9TujXQjr8KUAm21PN+LXWLW0MgDlbHhK5tfwwqVvs9mE+bgyjfZPdQt+
         K9xQEOjQqfRqHJME67XAl1zPd3y+t7LGTDVaRyTRpLoCDWvvzWppY9GlmLWtQr5QYo1Z
         ZUi9jSU+6ud1cyTRI0PDXwjADG62rmLKvC8ao1k+jwhEzfZoHI3YXOkXPoRfMzsMmWNI
         t/bxxZEaBLQr1IVIsBGACkYlzVvu7Wj2W5fekICWuUP6aZb/99k/0SD7yvaIXntaJMsN
         /G1w==
X-Gm-Message-State: AOAM530raY1hX3jRLQcgYdBtkMBzpyxaF8CKgz6BPa1sJ2rqeHfuzLy8
        wwU/5Fq/wcumWLf7KU4kHA==
X-Google-Smtp-Source: ABdhPJyfWBmxol+v5iHbvQfnO2btfL96QtSfj21hambNtUpGfWXI3Wz83qigvEy9SQy991iIl+8N7A==
X-Received: by 2002:a54:4413:: with SMTP id k19mr105547oiw.99.1602018639461;
        Tue, 06 Oct 2020 14:10:39 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id e7sm10244oia.9.2020.10.06.14.10.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Oct 2020 14:10:38 -0700 (PDT)
Received: (nullmailer pid 2847103 invoked by uid 1000);
        Tue, 06 Oct 2020 21:10:37 -0000
Date:   Tue, 6 Oct 2020 16:10:37 -0500
From:   Rob Herring <robh@kernel.org>
To:     Li Jun <jun.li@nxp.com>
Cc:     kernel@pengutronix.de, fugang.duan@nxp.com, peng.fan@nxp.com,
        Anson.Huang@nxp.com, devicetree@vger.kernel.org, linux-imx@nxp.com,
        shawnguo@kernel.org, aisheng.dong@nxp.com, s.hauer@pengutronix.de,
        qiangqing.zhang@nxp.com, peter.chen@nxp.com, krzk@kernel.org,
        linux-arm-kernel@lists.infradead.org, gregkh@linuxfoundation.org,
        balbi@kernel.org, festevam@gmail.com, robh+dt@kernel.org,
        horia.geanta@nxp.com
Subject: Re: [PATCH v5 1/4] dt-bindings: usb: dwc3-imx8mp: add imx8mp dwc3
 glue bindings
Message-ID: <20201006211037.GA2847068@bogus>
References: <1601726527-23326-1-git-send-email-jun.li@nxp.com>
 <1601726527-23326-2-git-send-email-jun.li@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1601726527-23326-2-git-send-email-jun.li@nxp.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 03 Oct 2020 20:02:04 +0800, Li Jun wrote:
> NXP imx8mp integrates 2 dwc3 3.30b IP and add some wakeup logic
> to support low power mode, the glue layer is for this wakeup
> functionality, which has a separated interrupt, can support
> wakeup from U3 and connect events for host, and vbus wakeup for
> device.
> 
> Signed-off-by: Li Jun <jun.li@nxp.com>
> ---
>  .../devicetree/bindings/usb/fsl,imx8mp-dwc3.yaml   | 105 +++++++++++++++++++++
>  1 file changed, 105 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
