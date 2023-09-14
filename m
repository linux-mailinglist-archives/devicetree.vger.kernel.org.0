Return-Path: <devicetree+bounces-294-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9FD7A0B21
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 18:59:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 83E67B20F1B
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 16:59:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 336A7241E8;
	Thu, 14 Sep 2023 16:58:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDDF9208A1
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 16:58:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21C05C433C8;
	Thu, 14 Sep 2023 16:58:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694710734;
	bh=J+t2r+ePzfGQt3fwL5+MyIEONpo2I6s4CW1auZDcROo=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=iESROMHBOef+QHiL5hRx4ndTrHgHV54+0/DAnTLmcb//i9fqGsHIheUWWXnsP84wD
	 c1nR3tEpcYSWcT70pDusNhGEbtXLEmiR5ww3I1vQ+H7dylx81O6z7jw4srpmk5QCjy
	 pTGI8lfyKm9dqHssoqc4gpNZ8+4mRtJJV7+a1mLZTQ6eR5VGJPhq47KIj88zks5CLj
	 j2vPqBQdnXTOaBhk238sRR7yjzWq+Usp4GdhNMV2QX7DIbB/B2hVU3tpOIKriIfnim
	 85m0+jAwEC/VUSLBa5/5SXJU9swF7GIgGqa34DQU2GUvVXdm/S4MXIGaeHzvg8vgp1
	 Z/Fp/fDSzv15g==
Date: Thu, 14 Sep 2023 11:58:52 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: jingoohan1@gmail.com, gustavo.pimentel@synopsys.com,
	lpieralisi@kernel.org, robh+dt@kernel.org, kw@linux.com,
	manivannan.sadhasivam@linaro.org, bhelgaas@google.com,
	kishon@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, marek.vasut+renesas@gmail.com,
	fancer.lancer@gmail.com, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v20 16/19] PCI: rcar-gen4: Add R-Car Gen4 PCIe Host
 support
Message-ID: <20230914165852.GA37731@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230825093219.2685912-17-yoshihiro.shimoda.uh@renesas.com>

On Fri, Aug 25, 2023 at 06:32:16PM +0900, Yoshihiro Shimoda wrote:
> Add R-Car Gen4 PCIe Host support. This controller is based on
> Synopsys DesignWare PCIe, but this controller has vendor-specific
> registers so that requires initialization code like mode setting
> and retraining and so on.

> +config PCIE_RCAR_GEN4
> +	tristate "Renesas R-Car Gen4 PCIe Host controller"

The config prompt that matches the other drivers would be:

  tristate "Renesas R-Car Gen4 PCIe controller (host mode)"
  
Similarly for the endpoint driver.

