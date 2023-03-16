Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4F0B26BD83C
	for <lists+devicetree@lfdr.de>; Thu, 16 Mar 2023 19:37:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229544AbjCPShU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Mar 2023 14:37:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229967AbjCPShT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Mar 2023 14:37:19 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C53BB06CD
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 11:36:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1678991789;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=KyRYif1MrPgavn2zFlvhl2OTR1d8rOcAGT7lsOp4AaU=;
        b=Mw0bJb7KZcfhXOIvwA/YWq1CEL31tz3i7rIBfi7gk+R1hpenCUpkP38i8XHR8pvQ8nt4Ys
        +dx1hzhjv2hZQY9vcSzLptVTDodNV+YeJEi7M/SMsGaIcSYygQ9klOvQBIrvH91aaF8DNS
        Vc5jNWPNXX6YlIGCWnV6wL2zL0PEQZ0=
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com
 [209.85.210.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-554-btsy1OvZNq-65TgSHe-o1g-1; Thu, 16 Mar 2023 14:36:18 -0400
X-MC-Unique: btsy1OvZNq-65TgSHe-o1g-1
Received: by mail-ot1-f69.google.com with SMTP id c17-20020a056830315100b00698878489e5so1141444ots.12
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 11:36:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678991776;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KyRYif1MrPgavn2zFlvhl2OTR1d8rOcAGT7lsOp4AaU=;
        b=UgjHu2+QYYQKeTjULL5dXYaabPKvatcJGm7gbjFPX4xYe2Nzxc3z4Qds7FBiAUE9v2
         j/WwY9G9uJIMdxU3zEDUB1hpyCqyMDpGpjT+tkiyHUNyKaTqr1ecKFl+xwzu29azXu6l
         KEHP8oap7IP7Bx7FCCNn9U6jDF7YRPZp03tf/A5BI3MDQxSBtvFMtMTICyPX/QOsMgXe
         MC5nq1NF7k39rAzDXFvY2YXPECzb1z4VkYrW5g1NS2I14AO47AWjBIh6IyhyjQOHzEG5
         FORP4G29TPYrg3bvwolWy5xe6ccamDOy3icB1+sIKPIus+5FVeoi51jUaKwzCssD5ChE
         ue2A==
X-Gm-Message-State: AO0yUKXxiLQJTV79p2KXsNrS5FHu1geyCNFJSVCtZpHfzUU6lz88WTEI
        2v5XfoylT7jsgr5MJtvp/fIbt6pb5jZyHe7Ad41Yqz+/fetv55JqQB78yQHjd29B6oxXV8B6vkP
        e4HxkfxHQ9v0SqvK+hAk3kQ==
X-Received: by 2002:a54:481a:0:b0:383:ee1d:f489 with SMTP id j26-20020a54481a000000b00383ee1df489mr3780308oij.0.1678991776245;
        Thu, 16 Mar 2023 11:36:16 -0700 (PDT)
X-Google-Smtp-Source: AK7set+6u2IcSrwCQvmuCLBcaVgSXFJVKayRRTtTKp7bwyaSZEGBvWuzrI2bCwi60By8ACrUJ/gVmQ==
X-Received: by 2002:a54:481a:0:b0:383:ee1d:f489 with SMTP id j26-20020a54481a000000b00383ee1df489mr3780239oij.0.1678991774493;
        Thu, 16 Mar 2023 11:36:14 -0700 (PDT)
Received: from halaney-x13s (104-53-165-62.lightspeed.stlsmo.sbcglobal.net. [104.53.165.62])
        by smtp.gmail.com with ESMTPSA id x82-20020acae055000000b00369a721732asm24184oig.41.2023.03.16.11.36.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Mar 2023 11:36:13 -0700 (PDT)
Date:   Thu, 16 Mar 2023 13:36:09 -0500
From:   Andrew Halaney <ahalaney@redhat.com>
To:     Jakub Kicinski <kuba@kernel.org>
Cc:     linux-kernel@vger.kernel.org, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org,
        davem@davemloft.net, edumazet@google.com, pabeni@redhat.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        vkoul@kernel.org, bhupesh.sharma@linaro.org,
        mturquette@baylibre.com, sboyd@kernel.org, peppe.cavallaro@st.com,
        alexandre.torgue@foss.st.com, joabreu@synopsys.com,
        mcoquelin.stm32@gmail.com, richardcochran@gmail.com,
        linux@armlinux.org.uk, veekhee@apple.com,
        tee.min.tan@linux.intel.com, mohammad.athari.ismail@intel.com,
        jonathanh@nvidia.com, ruppala@nvidia.com, bmasney@redhat.com,
        andrey.konovalov@linaro.org, linux-arm-msm@vger.kernel.org,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, ncai@quicinc.com,
        jsuraj@qti.qualcomm.com, hisunil@quicinc.com
Subject: Re: [PATCH net-next 08/11] net: stmmac: Add EMAC3 variant of dwmac4
Message-ID: <20230316183609.a3ymuku2cmhpyrpc@halaney-x13s>
References: <20230313165620.128463-1-ahalaney@redhat.com>
 <20230313165620.128463-9-ahalaney@redhat.com>
 <20230313173904.3d611e83@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230313173904.3d611e83@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Mar 13, 2023 at 05:39:04PM -0700, Jakub Kicinski wrote:
> On Mon, 13 Mar 2023 11:56:17 -0500 Andrew Halaney wrote:
> > EMAC3 is a Qualcomm variant of dwmac4 that functions the same, but has a
> > different address space layout for MTL and DMA registers. This makes the
> > patch a bit more complicated than we would like so let's explain why the
> > current approach was used.
> 
> Please drop all the static inlines in C sources, you're wrapping 
> a single function call, the compiler will do the right thing.
> 
> Please no more than 6 function arguments.
> 

Thanks for the feedback! With respect to <= 6 function arguments, if I
counted right the only violation is this:

static void do_config_cbs(struct mac_device_info *hw, u32 send_slope,
			  u32 idle_slope, u32 high_credit, u32 low_credit,
			  u32 queue, u32 etsx_ctrl_base_addr,
			  u32 send_slp_credx_base_addr,
			  u32 high_credx_base_addr, u32 low_credx_base_addr,
			  void (*set_mtl_tx_queue_weight)(struct mac_device_info *hw,
							  u32 weight, u32 queue))
(...)
static void emac3_config_cbs(struct mac_device_info *hw, u32 send_slope,
				    u32 idle_slope, u32 high_credit,
				    u32 low_credit, u32 queue)

I agree, that's quite gnarly to read. the emac3_config_cbs is the
callback, so it's already at 6 arguments, so there's nothing I can
trim there. I could create some struct for readability, populate that,
then call the do_config_cbs() func with it from emac3_config_cbs.
Is that the sort of thing you want to see?

Thanks,
Andrew

