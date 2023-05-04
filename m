Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 938A96F69FD
	for <lists+devicetree@lfdr.de>; Thu,  4 May 2023 13:31:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230253AbjEDLbn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 May 2023 07:31:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229935AbjEDLbe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 May 2023 07:31:34 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4D2659E2
        for <devicetree@vger.kernel.org>; Thu,  4 May 2023 04:30:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1683199845;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=etM/xsyH0Yws4Ss9w0FeDxzo7Qe+jK+oUIOXEFjGcd8=;
        b=dlYnvWjIPMMIJNlhZbqnWYvraz60hLGKi+tufyS7jpeEfNdTJfI+34q0JntlLKduAEBxLo
        hozEJmqNDVZuBohE4yrQYf6ieo7+xBdQum0Y2HSeBhkzcRd75TbzKQACHICNFJW9e2I3xc
        6vWyiCooEOGjGU1F4DSt+s2WwzGp6PM=
Received: from mail-yw1-f199.google.com (mail-yw1-f199.google.com
 [209.85.128.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-659-KnsJAf-GM3aTwJOF4Wq6XA-1; Thu, 04 May 2023 07:30:37 -0400
X-MC-Unique: KnsJAf-GM3aTwJOF4Wq6XA-1
Received: by mail-yw1-f199.google.com with SMTP id 00721157ae682-55a42c22300so3809647b3.2
        for <devicetree@vger.kernel.org>; Thu, 04 May 2023 04:30:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683199836; x=1685791836;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=etM/xsyH0Yws4Ss9w0FeDxzo7Qe+jK+oUIOXEFjGcd8=;
        b=RHRo2ezlwZZnf/vosxGGPip6s7bCXJDdMfxE4/RjF7dlqDX0KaIugeM1iSLqmIrDhm
         +sdUMxIuitau8mFlXhhmPa2n6AxUJbF1zQv2HCQfAbT9cvTlKLbhXCWNo8qqfR1l+Las
         dUH8mopfrDvH/GnZ8uPtyFgS3Ifi3e+Iul9msgSqQGv7kw2ivJlIZW/F4xKHu0LrLe/X
         Z6EpD9ZDdRVOsEQ1jrx4Bz1qLW4AObF3I8kZMmcBgh5jlTHdxVSHO0xFscvMYVTNvNJH
         RGUWc+JdBE085UCVeDGs08LZI7jGovrlY0KliSpIR5++eCR1YptzNKZqwrxzrfJjgl4X
         Usgw==
X-Gm-Message-State: AC+VfDwhzdRIirC/pB7ryp4HyU+180J3k1BryRgqz3g0cHQ04GgMIMND
        mBIpMkhSYDOPXitf4QYsZhDBOFNdKLoTMUlfBCR8nrb0K0VdtxfKheHmDTduXwFxrHvhzVACgUG
        VjlubIwIPtax9EuHwU0Nkew==
X-Received: by 2002:a0d:df47:0:b0:546:cbe:df90 with SMTP id i68-20020a0ddf47000000b005460cbedf90mr2130342ywe.30.1683199836745;
        Thu, 04 May 2023 04:30:36 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ6WqSfhXeOgcoG9W336jrt9NurtLdPMvCA2qb+J24+Wvkaf3h4qxOXU5wi4L6FB4BZ+du91Sw==
X-Received: by 2002:a0d:df47:0:b0:546:cbe:df90 with SMTP id i68-20020a0ddf47000000b005460cbedf90mr2130319ywe.30.1683199836481;
        Thu, 04 May 2023 04:30:36 -0700 (PDT)
Received: from brian-x1 (c-73-214-169-22.hsd1.pa.comcast.net. [73.214.169.22])
        by smtp.gmail.com with ESMTPSA id c198-20020a814ecf000000b0054fa9e39be0sm334848ywb.56.2023.05.04.04.30.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 May 2023 04:30:35 -0700 (PDT)
Date:   Thu, 4 May 2023 07:30:33 -0400
From:   Brian Masney <bmasney@redhat.com>
To:     Andrew Halaney <ahalaney@redhat.com>
Cc:     linux-kernel@vger.kernel.org, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v4 v0/4] sa8155p-adp devicetree ethernet cleanup
Message-ID: <ZFOXWTwOxK2+SioB@brian-x1>
References: <20230501212446.2570364-1-ahalaney@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230501212446.2570364-1-ahalaney@redhat.com>
User-Agent: Mutt/2.2.9 (2022-11-12)
X-Spam-Status: No, score=-2.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 01, 2023 at 04:24:42PM -0500, Andrew Halaney wrote:
> This series cleans up some devicetree conventions in sa8155p-adp based
> on feedback from other platforms.
> 
> The hope is that by getting it right here, future contributors won't
> repeat the same mistakes as I did!

Reviewed-by: Brian Masney <bmasney@redhat.com>

