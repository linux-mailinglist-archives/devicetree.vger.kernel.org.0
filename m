Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC7066CF40A
	for <lists+devicetree@lfdr.de>; Wed, 29 Mar 2023 22:09:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229948AbjC2UJS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Mar 2023 16:09:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230106AbjC2UJS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Mar 2023 16:09:18 -0400
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A82954ED9
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 13:09:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
        Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=hSZWRB/PIpqo+CCoc55NdEAnVUNhhJOK3rhPPapRSxw=; b=PXS9yGJX3/THavcPIuyjTKB8CY
        7ASFF1huvb2p8fNuAn5GVaog0laEMzS6sfozbzeFRm7imUZdFpYWut17WQSjhJtDbMAHbYU7MKNER
        LBDkVjoLwGDmp4BYsD465TMi0L77PXaIYyUhm6P9pLG9eLQRlsdaKmUOohBtavjH/164=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1phc6a-008ncE-3R; Wed, 29 Mar 2023 22:09:12 +0200
Date:   Wed, 29 Mar 2023 22:09:12 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Enrico Mioso <mrkiko.rs@gmail.com>
Cc:     devicetree@vger.kernel.org, Pali <pali@kernel.org>
Subject: Re: [PATCH V2] arm64: dts: marvell: add DTS for GL.iNet GL-MV1000
Message-ID: <aecb2157-5599-433f-a6e4-28ed8bb3bc94@lunn.ch>
References: <20230202093706.30995-1-mrkiko.rs@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230202093706.30995-1-mrkiko.rs@gmail.com>
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> +&mdio {
> +	switch0: switch0@1 {
> +		compatible = "marvell,mv88e6085";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		reg = <1>;
> +
> +		dsa,member = <0 0>;
> +
> +		ports: ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				reg = <0>;
> +				label = "cpu";
> +				ethernet = <&eth0>;

The label property is not required for the CPU port.

Please also add a fixed-link node here to match the eth0. You should
actually be getting errors from the DT validator here:

# CPU and DSA ports must have phylink-compatible link descriptions
if:
  oneOf:
    - required: [ ethernet ]
    - required: [ link ]
then:
  allOf:
    - required:
        - phy-mode
    - oneOf:
        - required:
            - fixed-link
        - required:
            - phy-handle
        - required:
            - managed

> +&eth0 {
> +	nvmem-cells = <&macaddr_factory_0>;
> +	nvmem-cell-names = "mac-address";
> +	phy-mode = "rgmii-id";

If the SoC is doing "rgmii-id" you want the CPU node doing "rgmii";

	Andrew
