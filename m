Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1412B1664D6
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2020 18:29:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728460AbgBTR33 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Feb 2020 12:29:29 -0500
Received: from mail-wm1-f66.google.com ([209.85.128.66]:35466 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728412AbgBTR33 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Feb 2020 12:29:29 -0500
Received: by mail-wm1-f66.google.com with SMTP id b17so2964897wmb.0
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2020 09:29:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thegoodpenguin-co-uk.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Q4qx3jqbEI2LXNLHh2qRlEwTiPf4rASGS8w/sDrnmwg=;
        b=n1Zj7J6egyyu4XSEYNvVUsPUeC5N+ThU079hVverQJdLd2AnzZZi+nOVLVMiYmD/d1
         VLNAtYvTyKBk2g3m4+c54bVWhSvP4hn2rZk81KnDZ4j7zlDNJUyzaJ9lkFsqbdyimamA
         2azfNkSSpWMwnok41dG0eHUk6YUAWnKXAaRLBRBRBqBREaYrOcaPeOm9w3GFOKA+Lrjq
         fX3CyMHoE0gmNRULIVXotRQX+QVtk9AglCEf0fXIUzZFIo7aYyu5o4X95BzxLSwYgFIF
         o5TYPi1ofCdxQkjrz0/0aNtECIQOfrRXA3hou5A3EmDEPIzhbeXqiZ9bg8X4PUM9MQbD
         NuTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Q4qx3jqbEI2LXNLHh2qRlEwTiPf4rASGS8w/sDrnmwg=;
        b=H+Rmb6Mg9kBtI7PJQmQgKi7n9a2i3JBF05r+nfocqyUCNheQg6aNVEW/a7MjRurnJC
         8frK8o9J1GZNd0Lc9qaAo8FgMHNEvtwOT3e11Q0XaHmgobIho49ND/QQ6QmHPh6aT7R3
         ev78PX8fYyfsFsqfp7AoQSkQKlbcxS0sB3HwlrtmN2Hku2Io5ZzoVpqHxJzyS7WXPzs1
         XbcdYTzy8fUmqviQW0yPvbgclbiLhVaGbG/5gHnks0FzbM8O5FEoKJbgbqtPLAZT0wJP
         69hak9l2axGYeYNGiuz5PdmAOLm0IJdZ3yiIRVdiqsaMv/WGaofM+nmfGCkDfVw814Yv
         5gSA==
X-Gm-Message-State: APjAAAX5zTMIAcPcmC+8PFWMParL8xu67slSgAaVGKybFgCXlQJbMk2O
        SbSQzDrdD8bdfVgZXssqIHHc4Q==
X-Google-Smtp-Source: APXvYqyuQKe1vF0yue4IgSN9scP6sj+6hjjPhnMRt+A7UulmjNFLWqQr6QTq4iwV57oNLCIAzEIlYw==
X-Received: by 2002:a7b:ce8b:: with SMTP id q11mr5753542wmj.100.1582219767346;
        Thu, 20 Feb 2020 09:29:27 -0800 (PST)
Received: from big-machine ([2a00:23c5:dd80:8400:98d8:49e6:cdcc:25df])
        by smtp.gmail.com with ESMTPSA id e1sm244147wrt.84.2020.02.20.09.29.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2020 09:29:26 -0800 (PST)
Date:   Thu, 20 Feb 2020 17:29:24 +0000
From:   Andrew Murray <amurray@thegoodpenguin.co.uk>
To:     Zhiqiang Hou <Zhiqiang.Hou@nxp.com>
Cc:     linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        bhelgaas@google.com, robh+dt@kernel.org, andrew.murray@arm.com,
        arnd@arndb.de, mark.rutland@arm.com, l.subrahmanya@mobiveil.co.in,
        shawnguo@kernel.org, m.karthikeyan@mobiveil.co.in,
        leoyang.li@nxp.com, lorenzo.pieralisi@arm.com,
        catalin.marinas@arm.com, will.deacon@arm.com, Mingkai.Hu@nxp.com,
        Minghuan.Lian@nxp.com, Xiaowei.Bao@nxp.com
Subject: Re: [PATCHv10 08/13] PCI: mobiveil: Add 8-bit and 16-bit CSR
 register accessors
Message-ID: <20200220172924.GI19388@big-machine>
References: <20200213040644.45858-1-Zhiqiang.Hou@nxp.com>
 <20200213040644.45858-9-Zhiqiang.Hou@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200213040644.45858-9-Zhiqiang.Hou@nxp.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Feb 13, 2020 at 12:06:39PM +0800, Zhiqiang Hou wrote:
> From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> 
> There are some 8-bit and 16-bit registers in PCIe configuration
> space, so add these accessors accordingly.
> 
> Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> Reviewed-by: Minghuan Lian <Minghuan.Lian@nxp.com>
> Reviewed-by: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>

Reviewed-by: Andrew Murray <amurray@thegoodpenguin.co.uk>

> ---
> V10:
>  - Changed the return types to reflect the size of the access.
> 
>  .../pci/controller/mobiveil/pcie-mobiveil.h   | 23 +++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/drivers/pci/controller/mobiveil/pcie-mobiveil.h b/drivers/pci/controller/mobiveil/pcie-mobiveil.h
> index 623c5f0c4441..72c62b4d8f7b 100644
> --- a/drivers/pci/controller/mobiveil/pcie-mobiveil.h
> +++ b/drivers/pci/controller/mobiveil/pcie-mobiveil.h
> @@ -182,10 +182,33 @@ static inline u32 mobiveil_csr_readl(struct mobiveil_pcie *pcie, u32 off)
>  	return mobiveil_csr_read(pcie, off, 0x4);
>  }
>  
> +static inline u16 mobiveil_csr_readw(struct mobiveil_pcie *pcie, u32 off)
> +{
> +	return mobiveil_csr_read(pcie, off, 0x2);
> +}
> +
> +static inline u8 mobiveil_csr_readb(struct mobiveil_pcie *pcie, u32 off)
> +{
> +	return mobiveil_csr_read(pcie, off, 0x1);
> +}
> +
> +
>  static inline void mobiveil_csr_writel(struct mobiveil_pcie *pcie, u32 val,
>  				       u32 off)
>  {
>  	mobiveil_csr_write(pcie, val, off, 0x4);
>  }
>  
> +static inline void mobiveil_csr_writew(struct mobiveil_pcie *pcie, u16 val,
> +				       u32 off)
> +{
> +	mobiveil_csr_write(pcie, val, off, 0x2);
> +}
> +
> +static inline void mobiveil_csr_writeb(struct mobiveil_pcie *pcie, u8 val,
> +				       u32 off)
> +{
> +	mobiveil_csr_write(pcie, val, off, 0x1);
> +}
> +
>  #endif /* _PCIE_MOBIVEIL_H */
> -- 
> 2.17.1
> 
