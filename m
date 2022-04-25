Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4406750E749
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 19:29:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243924AbiDYR3S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 13:29:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244074AbiDYR2j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 13:28:39 -0400
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D2B620190
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 10:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1650907528; x=1682443528;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=jGcTuSTntuAHYCdhP0sz0aVcA3gK8ccr+Nxg4lSLwFk=;
  b=MIlyUPahu92EiZUmiqwO/JR/fZ0hx1Dl6rccLGJB8vp+8R7budp/VsJX
   goZztBC6FgkeHQvjZ0j20qvbERYsWsUUFFZqQeAH28LMmV+jnG/RjwBzo
   xpOx+cZvFAMsU2bdLJLv7fR7Un62UItVJ8UrEehKl/9IUBFfkfHz4BcOS
   Sp/KbHgztA2h8aTg+gI4d7UfS4INwYIk6ZZqX1sfvuEPNoEzmu6ybQi6w
   al+wWxTgc/BQsm4FtuNTejtaWHuvjuk3SZjoRNKEuu4DLO2dwlDW7KPUn
   ir6nZ2EnxDsL44Cw0aBex00ecsZj4okkWppv9vDOv37jwu5NriY9ebDtC
   Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10328"; a="245239590"
X-IronPort-AV: E=Sophos;i="5.90,289,1643702400"; 
   d="scan'208";a="245239590"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Apr 2022 10:25:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,289,1643702400"; 
   d="scan'208";a="579392827"
Received: from lkp-server01.sh.intel.com (HELO 5056e131ad90) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 25 Apr 2022 10:25:23 -0700
Received: from kbuild by 5056e131ad90 with local (Exim 4.95)
        (envelope-from <lkp@intel.com>)
        id 1nj2Sh-0002jU-0O;
        Mon, 25 Apr 2022 17:25:23 +0000
Date:   Tue, 26 Apr 2022 01:24:46 +0800
From:   kernel test robot <lkp@intel.com>
To:     Daniel Kaehn <kaehndan@gmail.com>, tiwai@suse.com
Cc:     llvm@lists.linux.dev, kbuild-all@lists.01.org,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] Add generic serial MIDI driver using serial bus API
Message-ID: <202204260120.TIXTqkq1-lkp@intel.com>
References: <20220420194747.490542-3-kaehndan@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220420194747.490542-3-kaehndan@gmail.com>
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Daniel,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on tiwai-sound/for-next]
[also build test WARNING on v5.18-rc4 next-20220422]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/intel-lab-lkp/linux/commits/Daniel-Kaehn/Add-generic-serial-MIDI-driver-using-serial-bus-API/20220421-035024
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tiwai/sound.git for-next
config: arm64-allyesconfig (https://download.01.org/0day-ci/archive/20220426/202204260120.TIXTqkq1-lkp@intel.com/config)
compiler: clang version 15.0.0 (https://github.com/llvm/llvm-project 1cddcfdc3c683b393df1a5c9063252eb60e52818)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://github.com/intel-lab-lkp/linux/commit/65e00db0913a4019c3158e31aa6b2fd2c28ba03f
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Daniel-Kaehn/Add-generic-serial-MIDI-driver-using-serial-bus-API/20220421-035024
        git checkout 65e00db0913a4019c3158e31aa6b2fd2c28ba03f
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=arm64 SHELL=/bin/bash arch/arm64/kernel/ drivers/acpi/arm64/ sound/drivers/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> sound/drivers/serial-generic.c:192:6: warning: no previous prototype for function 'snd_serial_generic_write_wakeup' [-Wmissing-prototypes]
   void snd_serial_generic_write_wakeup(struct serdev_device *serdev)
        ^
   sound/drivers/serial-generic.c:192:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void snd_serial_generic_write_wakeup(struct serdev_device *serdev)
   ^
   static 
   1 warning generated.


vim +/snd_serial_generic_write_wakeup +192 sound/drivers/serial-generic.c

   191	
 > 192	void snd_serial_generic_write_wakeup(struct serdev_device *serdev)
   193	{
   194		struct snd_serial_generic *drvdata = serdev_device_get_drvdata(serdev);
   195	
   196		if (!snd_rawmidi_transmit_empty(drvdata->midi_output))
   197			snd_serial_generic_output_write(drvdata->midi_output);
   198	}
   199	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
