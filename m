Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6F61D707B1A
	for <lists+devicetree@lfdr.de>; Thu, 18 May 2023 09:36:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230155AbjERHgu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 May 2023 03:36:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35480 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230032AbjERHgt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 May 2023 03:36:49 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E071EE
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 00:36:45 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-4f122ff663eso1904588e87.2
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 00:36:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684395403; x=1686987403;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oDVdWICwavrWQ8UAVYhe8ynFXsBBW1vVQ7W08zgiq24=;
        b=XiNus60h9WI4EZz0ffYybRwAlrnSCl4k2D2RFn0vfo1XfeP6ga9sLXHoi2xO1xcydt
         Jd6KdLtl5NGgjoRj0xKhHq3iZKmnfZHLTi9PgwLZ/j3lg9xg8JLnji0ppur5o7r6tkCO
         sKaGGpG9Q02z4c9IWhu1uUeQ86AsJw9OBQpVLJKsirpZO6/n2lXz2EfbA24L5oBBoewh
         T9YCYDtIeEKtqEkR6dkedVMolI4LuD8kmZI7jFEQAMv14vFMC/DpK4pzhxDHy9qzuus7
         vOzosoJDS2fbV4Wd1dFe34nJ7yDfdRk5c8AXB/jlAz7RAYpQ6ecyk6hAFaGWOHRqH6n2
         nICg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684395403; x=1686987403;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oDVdWICwavrWQ8UAVYhe8ynFXsBBW1vVQ7W08zgiq24=;
        b=EiNvCYcaCS3Lax7juiNXD83HicqLJTgUuQcOE+24qaPEHGLmlfFtqJ6L9kmI/JUtgF
         ZetPI297oEeZX1w+mk8FPDPSjKqDhlYOentI0DjyqBSaiR99R55xdLFiYSS9A4cHMXif
         1RwhSMchkGQZlyY8iYLRI+OV+iaEObcHrSrdXv7XsfNyWN2H+EmC7M3ITnJflZpl2AKi
         nMfvYqGzWzDErlk8G0tyzVL+fGorzjdlG1CWcIVkEdMPbgUUsg5UVQ7IDpyMM3Hm83Mg
         EgKntL47EmGStyTFxC9gv4GH55PSr1sKDX1UC5X9Dw5Q5aRHPkeiMbuOEEoZYp0dsh9g
         2a6A==
X-Gm-Message-State: AC+VfDxApsUnZuuBp5zgyvvSyuePpF8oRE2YpvkcjMPDDtlDhpWOxziu
        zfBqAunlXLI5Gw11M72BfgAKr47p9q57ogd326s=
X-Google-Smtp-Source: ACHHUZ7UwxvVovSFIWfA5npspTJiSx08DCpjGFaRTYtVZY/JK4LFBzzoXvZ1FuC8xVlQUx9EdBw42MOgPxwkl5ksce8=
X-Received: by 2002:a19:5515:0:b0:4dd:afd7:8f1 with SMTP id
 n21-20020a195515000000b004ddafd708f1mr935877lfe.52.1684395403170; Thu, 18 May
 2023 00:36:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab3:7310:0:b0:222:5939:ed00 with HTTP; Thu, 18 May 2023
 00:36:42 -0700 (PDT)
Reply-To: contact.ninacoulibaly@inbox.eu
From:   nina coulibaly <ninacoulibaly214@gmail.com>
Date:   Thu, 18 May 2023 00:36:42 -0700
Message-ID: <CAL5O4-FkuZ4+cfdfacpSK4rphAB62+860E4OyTBSCttWKZzU-Q@mail.gmail.com>
Subject: from nina coulibaly
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_40,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dear,

I am interested to invest with you in your country with total trust
and i hope you will give me total support, sincerity and commitment.
Please get back to me as soon as possible so that i can give you my
proposed details of funding and others.

Best Regards.

Mrs Nina Coulibaly
