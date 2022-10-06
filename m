Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C4465F69C6
	for <lists+devicetree@lfdr.de>; Thu,  6 Oct 2022 16:38:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231611AbiJFOiu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Oct 2022 10:38:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229540AbiJFOis (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Oct 2022 10:38:48 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BBF6A8CF5
        for <devicetree@vger.kernel.org>; Thu,  6 Oct 2022 07:38:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1665067124;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=5O7C0eVcueYILC/8tnxwgVOGnNG5SRbPBQweUSiv/BI=;
        b=itHmmIgMZ4iO0G8GIQenpGOnuTl/yN2dHtOkkrillfkFOxF9yJlfcPt3wL0TibY6WKYY8v
        aUeAVbXGW68HX9X1E2pn+lNAlqNd0Kvu8oaOUKc2VPcekvE8jhRr0P0WNX7I9lgrn9Vrib
        eRAPWhWC9jC3UnowByOvL9QP+yt8zEI=
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com
 [209.85.166.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-550-Sf_Nv5fPOguVxg6pTA0-gw-1; Thu, 06 Oct 2022 10:38:43 -0400
X-MC-Unique: Sf_Nv5fPOguVxg6pTA0-gw-1
Received: by mail-io1-f70.google.com with SMTP id n10-20020a5e8c0a000000b006b4fbf1b1c4so1243093ioj.21
        for <devicetree@vger.kernel.org>; Thu, 06 Oct 2022 07:38:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5O7C0eVcueYILC/8tnxwgVOGnNG5SRbPBQweUSiv/BI=;
        b=A8drpTGgx3kzgHXHTiWkbe+m8DF5OETV0vIe49NxoOefcD45M9N0bPNWcgG50pRIKt
         Kib+ZgK/9+yGEVB+D5KrafP0mVgL8yLFBWJZJ5Ns27mPCklfKTV4V9PzCiGYNY9gdDkS
         afpN+ABPTDqQYo8kQJ6wHUBb0Lyaw9mYFwiuB/LKqyRE9O6r1aUs2DvtXhJ01yQzr+XX
         A1iIMLByrrAXgC1SMsV/guODtUuYASVfh34gTpB5RCyy4DVAg35yqM28/Cc3JDDUcFn1
         DRnq3AlGpbNkP8Il4HOVvG3+Rfdf0OgghVAQDSXPe+6XL7Pyase0T1qClsCpuZSAwO+x
         AERw==
X-Gm-Message-State: ACrzQf1NOxS9oy5hMeY78cRL+1VI6BoXTHgDmvz1vRkVnsVmhia990sk
        lNo4CNQDZMXCQUGcieIXyDWBzH6mwujqHHniAJAkDQjhNcbgPCFOV4Iwa61n3qYBATWYnP+DtIj
        gjI4zFOGiR7GrOuOcKTt9xQ==
X-Received: by 2002:a05:6e02:6d1:b0:2f9:3901:933f with SMTP id p17-20020a056e0206d100b002f93901933fmr963ils.64.1665067122703;
        Thu, 06 Oct 2022 07:38:42 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM5/3L6ZorP/J1u+HdUyVBa0ZkXXbZ2hdZ2mtjO1HTpC2EG36vGGE8GNBnxR6ZXhha3GG873gA==
X-Received: by 2002:a05:6e02:6d1:b0:2f9:3901:933f with SMTP id p17-20020a056e0206d100b002f93901933fmr954ils.64.1665067122540;
        Thu, 06 Oct 2022 07:38:42 -0700 (PDT)
Received: from x1 (c-98-239-145-235.hsd1.wv.comcast.net. [98.239.145.235])
        by smtp.gmail.com with ESMTPSA id m37-20020a026d25000000b0035b3e0a3243sm7415073jac.57.2022.10.06.07.38.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Oct 2022 07:38:42 -0700 (PDT)
Date:   Thu, 6 Oct 2022 10:38:40 -0400
From:   Brian Masney <bmasney@redhat.com>
To:     Johan Hovold <johan+linaro@kernel.org>
Cc:     Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sc8280xp: fix ufs_card_phy ref clock
Message-ID: <Yz7ocG5/HhrcjeHS@x1>
References: <20221005143305.388-1-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221005143305.388-1-johan+linaro@kernel.org>
User-Agent: Mutt/2.2.7 (2022-08-07)
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,
        SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Oct 05, 2022 at 04:33:05PM +0200, Johan Hovold wrote:
> The GCC_UFS_REF_CLKREF_CLK must be enabled or the second UFS controller
> fails to enumerate on sa8295p-adp.
> 
> Note that the vendor kernel enables both GCC_UFS_REF_CLKREF_CLK and
> GCC_UFS_1_CARD_CLKREF_CLK and it is possible that the former should be
> modelled as a parent of the latter. The clock driver also has a
> GCC_UFS_CARD_CLKREF_CLK clock which the firmware appears to enable on
> the ADP.
> 
> The usual lack of documentation for Qualcomm SoCs makes this a highly
> annoying guessing game, but as the second controller works on the ADP
> without either card reference clock enabled, only enable
> GCC_UFS_REF_CLKREF_CLK for now.
> 
> Fixes: 152d1faf1e2f ("arm64: dts: qcom: add SC8280XP platform")
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Brian Masney <bmasney@redhat.com>

