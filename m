Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9411084BCB
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2019 14:40:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729408AbfHGMk1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Aug 2019 08:40:27 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:33761 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727213AbfHGMk1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Aug 2019 08:40:27 -0400
Received: by mail-wm1-f68.google.com with SMTP id p77so1564090wme.0
        for <devicetree@vger.kernel.org>; Wed, 07 Aug 2019 05:40:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=6whnjfOT78lwV2LbGYGGfvKi0HLjAzDoyFB9GtBsQ7I=;
        b=mIl9kZ1qsQCp5djeo6aWLCeB6DToqu5hg4utceLnPRC2tMWIm8nXiHNBedc+dgtDj9
         POs3TJATNwhUEuw+33vShSRzemzzCmaWDsqZl2+OoNXfZjljLT78hqvUT0xK8e1DM19X
         1OmeF8dL9lD5fr0lE+T5do8Pou831XGCubkxKWdxk+wopYrJp9zxf0oB7nPUA+K1POUM
         5E1sqJFSQ0eN944/f68ps4Wy79s2rwP7mp7P1Yvy/Tw/1RzC2Hqx8hH/z3E8DpNBuAIB
         xhyDevmHiAv0knVB6g9vaz70MvKXH1E6LbesMLOzRQ5LZteK+VlW03oH71uPrmQe0vvD
         Hyxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=6whnjfOT78lwV2LbGYGGfvKi0HLjAzDoyFB9GtBsQ7I=;
        b=BdITzgOtoJ4Nb/Oj/f/ZW4BXFDWdVzjS+sYoDbXxdiYxBTru/dZrvm5F8NYoLPLrlc
         NImjY48hWwbe6sYy07yuqe2+GeUxqlKx18S2jJhXkw/E/lf7FtCPSuLbwAX7r+MEetOF
         Iy72B8HNCaJfyCRIbr16foM93XA8ryOGqMY57Z4Cu6aVFEQ/S4UGk63hKvW/anR5ERfi
         01V70F9zZbvYycWEhxO/zMwyItoL2jlc8t+l56Vq6dSGarjmDSS1w6Rfm92sofeppowz
         qWKxx6RrzNkOHifBRpqxU86xUOPxFQbCDxWxXnv6nqKB6zW9bB+zp4/WXgFlvTpjT5AZ
         pu9g==
X-Gm-Message-State: APjAAAVgPtumh53/WxfCDSYbZlRc+MTWJEWfr52anRz7LDXu0uJLsO3c
        tDHDCzxdkg3s9RYoobKdcyg=
X-Google-Smtp-Source: APXvYqwZi0PyNrRQrW1epohlRGDSQOHJWW9SJMsLiaQvfZZm48DRbRYNPHAQo5fHuc31cTPxLRyV5Q==
X-Received: by 2002:a1c:63c4:: with SMTP id x187mr10284329wmb.4.1565181625415;
        Wed, 07 Aug 2019 05:40:25 -0700 (PDT)
Received: from localhost ([193.47.161.132])
        by smtp.gmail.com with ESMTPSA id r11sm140927490wre.14.2019.08.07.05.40.24
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 07 Aug 2019 05:40:24 -0700 (PDT)
Date:   Wed, 7 Aug 2019 14:04:28 +0200
From:   Oliver Graute <oliver.graute@gmail.com>
To:     Dong Aisheng <aisheng.dong@nxp.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        dongas86@gmail.com, catalin.marinas@arm.com, will.deacon@arm.com,
        robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
        fabio.estevam@nxp.com, Mark Rutland <mark.rutland@arm.com>,
        shawnguo@kernel.org
Subject: Re: [PATCH v2 10/15] arm64: dts: imx8qm: add conn ss support
Message-ID: <20190807120428.GA27833@optiplex>
References: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com>
 <1563290089-11085-11-git-send-email-aisheng.dong@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1563290089-11085-11-git-send-email-aisheng.dong@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/07/19, Dong Aisheng wrote:
> The CONN SS of MX8QM is mostly the same as MX8QXP except it has one more
> USB HSIC module support. So we can fully reuse the exist CONN SS dtsi.
> Add <soc>-ss-conn.dtsi with compatible string updated according to
> imx8-ss-conn.dtsi.
> +&usdhc1 {
> +	compatible = "fsl,imx8qm-usdhc", "fsl,imx7d-usdhc";
> +};
> +
> +&usdhc2 {
> +	compatible = "fsl,imx8qm-usdhc", "fsl,imx7d-usdhc";
> +};

I need to add here for my imx8qm-rom7720-a1 board:


&usdhc3 {
	compatible = "fsl,imx8qm-usdhc", "fsl,imx7d-usdhc";
};

I'll prepare a patch for that on top of yours.

Best Regards,

Oliver
