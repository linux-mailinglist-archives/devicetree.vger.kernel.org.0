Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 95D2FA15BD
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2019 12:20:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726739AbfH2KUQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Aug 2019 06:20:16 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:51337 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726417AbfH2KUN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Aug 2019 06:20:13 -0400
Received: by mail-wm1-f65.google.com with SMTP id k1so3111856wmi.1
        for <devicetree@vger.kernel.org>; Thu, 29 Aug 2019 03:20:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=oV1Wry1j4F9UQSbEsy879mgw0vbzvWZi3E/2C9Xr/o4=;
        b=QtyNKj4rIaVLSEGCBYZ0g1rJmyc4gQIGoFjKmwhYraPr8ci/i0a2nu8t3ytdlAwEKt
         qf2uS2AZ8vbrvncCXHzySAjRTRNh6fxEer9JZEcOnvzbRnN/lKHb9GdwMJVsWLa5aEMJ
         jylk7kZTMFsu62btaZsIx3nrZAwFbRVUGZ2qLNClDlGGd8IFlc+BKgnkQdlhTxxvbJyf
         xyuMJLPZKERzHwGan5uQfIBAI/8kRwKpyeZOY9nYolYH//8KEmis+J6sdBTBN2BpuBq6
         d3tgTO7OtDtTDNvPXQ2OStQOjpE5AVGTekr3myLpv/HWgJx35lAgj31iInGbuU11oKoA
         W0xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=oV1Wry1j4F9UQSbEsy879mgw0vbzvWZi3E/2C9Xr/o4=;
        b=jsxaKwLuBDn7syjSfXGO5nkuTH5Fysdtx3p+W8vjDsSsurvDTJSrTrxBbsSmpwL/MG
         h6DpLphNHpatNIiCCw4B2XxwweaosEMAvSfU4L5FmP/eciCy4LdNrVMe0wB8mXxsUawI
         yzacatR9cUHdygislfWKE8tsPvu0IYLDTcmhrZuo/cIPVDwSQwwKViwA9HBBG9hajneB
         V6fxu2HkOskUGpUqd4C3XvoOOk/O8AvVhYKOow5JEPaBcmQEQGvooqTsDCUooObdqKZw
         m13UhSSwX4quyilkJggj4JP3b1sUmhy8TYQgBlILisNSTAug2wgZYWnGqx4+pGmaguQk
         YrRw==
X-Gm-Message-State: APjAAAWgLVtYZtQE/WASn4v0XgalUdw4D0q7ow9hEhHNziXOdCj7OUsO
        vBueLcxM+29LaOv6liY/9QY=
X-Google-Smtp-Source: APXvYqxmfOlOdhM+4wMcogUraaxSOv9oE2aok+4QbA4Y5jS+6Avn/HUwUOSjibZaoiKClOF9gwjOww==
X-Received: by 2002:a7b:c929:: with SMTP id h9mr11206344wml.1.1567074010805;
        Thu, 29 Aug 2019 03:20:10 -0700 (PDT)
Received: from localhost ([193.47.161.132])
        by smtp.gmail.com with ESMTPSA id n9sm1994711wrp.54.2019.08.29.03.20.09
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 29 Aug 2019 03:20:09 -0700 (PDT)
Date:   Thu, 29 Aug 2019 12:20:09 +0200
From:   Oliver Graute <oliver.graute@gmail.com>
To:     Dong Aisheng <aisheng.dong@nxp.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        dongas86@gmail.com, catalin.marinas@arm.com, will.deacon@arm.com,
        robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
        fabio.estevam@nxp.com, Mark Rutland <mark.rutland@arm.com>,
        shawnguo@kernel.org
Subject: Re: [PATCH v2 01/15] arm64: dts: imx8qxp: add fallback compatible
 string for scu pd
Message-ID: <20190829102009.GA22728@optiplex>
References: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com>
 <1563290089-11085-2-git-send-email-aisheng.dong@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1563290089-11085-2-git-send-email-aisheng.dong@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/07/19, Dong Aisheng wrote:
> According to binding doc, add the fallback compatible string for
> scu pd.

This Patch series (v2) is running fine for some weeks on my iMX8QM Board.

So feel free to use my Tag:
Tested-by: Oliver Graute <oliver.graute@kococonnector.com>

Will there be an updated version of this Patch series which apply on
latest linux next?

Best Regards,

Oliver
