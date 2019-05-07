Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3F3D115FA5
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2019 10:44:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726991AbfEGIo1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 May 2019 04:44:27 -0400
Received: from mail-lf1-f67.google.com ([209.85.167.67]:46574 "EHLO
        mail-lf1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727014AbfEGIo0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 May 2019 04:44:26 -0400
Received: by mail-lf1-f67.google.com with SMTP id k18so11173021lfj.13
        for <devicetree@vger.kernel.org>; Tue, 07 May 2019 01:44:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=/TEtUQerbzNDbMApQnE7fl+aZhcChUfXzq2vTK+1alo=;
        b=rleNqMilhRe8NeGJMI+BO9fCS+ffEQ67uAkRxjGiOdxjSPWcez+9tkZM15saLCKg6w
         kPGWP55+pgj/RfYSZ18V0kEPJldHVbn4oqdP2iBjImM/jWzSGfYN+9LvlBhkrTzH10cL
         xgG4iLArIvj/qzZ+6AIjXGjo8akwrAq9iNf2N3sQ9sXAyISKxNwjr3BK8ya7jrm9kPTM
         IXkir3jZiHnnVQmzdRbcz4IK2cK3JgnYZ5jy4uZ1/drblBsjLl6PXYm7L44ylVeulZiQ
         UGQZDj95k8HFfvo1aQNk2OhqKclIVGs2seUp7jto/lSSCF+JUXKj+xz/btwItZUKH1uk
         3DKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=/TEtUQerbzNDbMApQnE7fl+aZhcChUfXzq2vTK+1alo=;
        b=OWUtCnQ0oVX3WfuIrUAp500H+RDlomNpNlWV3bamS9J1EcXUPlbxtAS8QIwlFUQmrD
         QBb2cvln36DDE6HEmXoueBz5h2Im/kQVb7JpZW6BzpGV0AM+e3wg169GzgC0NM3V+jgw
         McHb3kTqXeKMCdpORhm8x02LKAl3CRb+WBya0QezsnIzCWD3MwYMniJsKQUQdQlKTgjS
         KRCFW6pG8jANLx3tyiSZ1NoYsBSZwWsUvNjMgtgGMyx4TEH9xg4TSlaKk0mC7s8dQ2f5
         wKe10Daozph1CPaEJk9tZnqHKGphrcfKJUwnZzjobGg92k4T/EaqAn6KjTAEzfsJGsx4
         NzIQ==
X-Gm-Message-State: APjAAAXyzsgGbyGW9zBPDZz4AAP65wqU6b5FTvbqVkfJVzLvWh8MrDEn
        j6GJh6+MumhugiaiIldFjsAAo6+vGk0=
X-Google-Smtp-Source: APXvYqxC+QeOdrtkp6TrZlboNRyLGXETMNNFl2nkB0L5/jul5uT14641232atp2qgsYTdPPE0H4uIg==
X-Received: by 2002:ac2:52b1:: with SMTP id r17mr15541907lfm.39.1557218664064;
        Tue, 07 May 2019 01:44:24 -0700 (PDT)
Received: from [192.168.0.199] ([31.173.80.92])
        by smtp.gmail.com with ESMTPSA id 63sm3170991lfz.2.2019.05.07.01.44.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 May 2019 01:44:23 -0700 (PDT)
Subject: Re: [PATCH 09/10] ARM: dts: r7s9210: Add USB Device support
To:     Chris Brandt <chris.brandt@renesas.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Simon Horman <horms@verge.net.au>,
        Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc:     linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org
References: <20190506234631.113226-1-chris.brandt@renesas.com>
 <20190506234631.113226-10-chris.brandt@renesas.com>
From:   Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <8182b7b7-c447-b0ba-2654-ac71f9c86dbb@cogentembedded.com>
Date:   Tue, 7 May 2019 11:44:18 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190506234631.113226-10-chris.brandt@renesas.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07.05.2019 2:46, Chris Brandt wrote:

> Add USB Device support for RZ/A2.
> 
> Signed-off-by: Chris Brandt <chris.brandt@renesas.com>
> ---
>   arch/arm/boot/dts/r7s9210.dtsi | 24 ++++++++++++++++++++++++
>   1 file changed, 24 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/r7s9210.dtsi b/arch/arm/boot/dts/r7s9210.dtsi
> index 1a992e6197c3..67ac746142d0 100644
> --- a/arch/arm/boot/dts/r7s9210.dtsi
> +++ b/arch/arm/boot/dts/r7s9210.dtsi
> @@ -354,6 +354,18 @@
>   			status = "disabled";
>   		};
>   
> +		usbhs0: usbhs@e8219000 {

   The node names should be generic, i.e. "usb@e8219000".

[...]
> @@ -386,6 +398,18 @@
>   			status = "disabled";
>   		};
>   
> +		usbhs1: usbhs@e821b000 {

    Same here.

[...]

MBR, Sergei
