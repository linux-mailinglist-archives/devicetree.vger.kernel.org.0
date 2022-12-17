Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4622464FC5A
	for <lists+devicetree@lfdr.de>; Sat, 17 Dec 2022 22:01:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229675AbiLQVBB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Dec 2022 16:01:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229625AbiLQVA5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Dec 2022 16:00:57 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD9D2E01D
        for <devicetree@vger.kernel.org>; Sat, 17 Dec 2022 13:00:55 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id h8-20020a1c2108000000b003d1efd60b65so6395689wmh.0
        for <devicetree@vger.kernel.org>; Sat, 17 Dec 2022 13:00:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xBAuq5jrs/F0QNXmgSnKGyr8XPJNiWKZyq9E0iSuiwE=;
        b=w7E5X5CV2Xdn0phpyu7k9zI7JQxxrT+Zsv8L0QRqJS6jUwqVNyMN6mvXnTstS053vB
         09GUzA0JIYGncJGIt9FjCmvoSDiaWJjbjfW2i/9QmyivKVU8FFfCZstMwpODutoHZI/S
         miZ4bnemzCDSEiDIsZ5ffM58rJ+9MhUCbAT0PQ1of8p00tDnkw7un6ko/nL0oryrhz7Q
         WyXwNTBJL7YKJnncnHpp9YlkDVvgdJ6+ugBxcRskAZzFcU2pNQcbR9pCn+yhaKJOvlLN
         t0c2Fj1mjVfmqOpXTkwq/9raazHECIw14KeoEC40Jhx7YBS2LO0tDckgpF8k9Jh9BJKt
         Bk2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xBAuq5jrs/F0QNXmgSnKGyr8XPJNiWKZyq9E0iSuiwE=;
        b=iVf52kul6jO6LCsbKmcWRdOjLAZ7t7Ux9VQNWY9Bjwn069jTqBKpPd5BdabdE71dIT
         2EXoxiHma9D0qCgufwwU1Q2HY9IZ6MprgY+8IXCW3nYbV7EsgKnRH8S834kwrEVXPp1z
         9WEkyYvENjrPEfG3Twq/NiGTv37kiUGs0T093+czSZztz+QSXlGe93AdMc7xPUMyN3Aq
         LmQt2ycDXVMlUgy161vEoMBU0wB//LNMvf/f1z1AVN1xiVL2IT1HTeBx3puq1nik6Utw
         XCReTYbM7xgE1AsoaVQD1yXiqxnDrj1gkQypioXw9NL81yez+9osILMblj35UMyUSZ88
         RWug==
X-Gm-Message-State: ANoB5pmvwAMGn6XFVnJdc556jRQ84U3WYqPgL+bZtA/gQR1vYhvYA26Q
        nVd128jhwWE9PSDCLo+3st3l2A==
X-Google-Smtp-Source: AA0mqf50Ip+1PsW79F2vF0geQ0dfNWFjlqKaTX4jZOpZap09W2NdEM74Sdvgm/MqkxEMF3nfddQb+w==
X-Received: by 2002:a1c:4b14:0:b0:3d2:39dc:4ab9 with SMTP id y20-20020a1c4b14000000b003d239dc4ab9mr11781779wma.13.1671310854181;
        Sat, 17 Dec 2022 13:00:54 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:4a02:2aff:fe07:1efc])
        by smtp.googlemail.com with ESMTPSA id o3-20020a05600c510300b003cfa3a12660sm25187618wms.1.2022.12.17.13.00.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Dec 2022 13:00:53 -0800 (PST)
Date:   Sat, 17 Dec 2022 22:00:50 +0100
From:   Corentin LABBE <clabbe@baylibre.com>
To:     Conor Dooley <conor@kernel.org>
Cc:     jdelvare@suse.com, linux@roeck-us.net, robh+dt@kernel.org,
        devicetree@vger.kernel.org, linux-hwmon@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: hwmon: gpio-fan: convert to YAML
Message-ID: <Y54uAuwrwU5Nl8kp@Red>
References: <20220126200350.3633576-1-clabbe@baylibre.com>
 <Y54BbjoRm5z2Tlp8@spud>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y54BbjoRm5z2Tlp8@spud>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Le Sat, Dec 17, 2022 at 05:50:38PM +0000, Conor Dooley a écrit :
> On Wed, Jan 26, 2022 at 08:03:50PM +0000, Corentin Labbe wrote:
> > Converts hwmon/gpio-fan.txt to YAML
> > 
> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > ---
> > 
> > I didnt found any clear maintainer and since DT yaml mandates a
> > maintainer section, I set devicetree@vger.kernel.org.
> 
> Hey Corentin,
> Looks like there were only some minor comments from Rob on this patch,
> but I do not see a v2 on lore. Just never get around to sending a v2, or
> did it fall through the cracks?
> Thanks,
> Conor.
> 

I just forgot it.

I will send v2 soon.

Thanks for the reminder
Regards
